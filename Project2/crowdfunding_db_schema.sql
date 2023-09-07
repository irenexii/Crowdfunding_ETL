--Create Campaigns Table
CREATE TABLE IF NOT EXISTS public.campaigns
(
    cf_id bigint NOT NULL DEFAULT nextval('campaigns_cf_id_seq'::regclass),
    contact_id bigint NOT NULL DEFAULT nextval('campaigns_contact_id_seq'::regclass),
    company_name text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    goal double precision,
    pledged double precision,
    outcome text COLLATE pg_catalog."default",
    backers_count integer,
    country text COLLATE pg_catalog."default",
    currency text COLLATE pg_catalog."default",
    launched_date date,
    end_date date,
    category_id character varying COLLATE pg_catalog."default" NOT NULL,
    subcategory_id character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT campaigns_pkey PRIMARY KEY (cf_id)
);


--Create Category Table
CREATE TABLE IF NOT EXISTS public.category
(
    category_id character varying COLLATE pg_catalog."default" NOT NULL,
    category_1 text COLLATE pg_catalog."default",
    CONSTRAINT category_pkey PRIMARY KEY (category_id)
);


--Create Contacts Table
CREATE TABLE IF NOT EXISTS public.contacts
(
    contact_id bigint NOT NULL DEFAULT nextval('contacts_contact_id_seq'::regclass),
    first_name text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    email text COLLATE pg_catalog."default",
    CONSTRAINT contacts_pkey PRIMARY KEY (contact_id)
);


--Create Subcategory Table
CREATE TABLE IF NOT EXISTS public.subcategory
(
    subcategory_id character varying COLLATE pg_catalog."default" NOT NULL,
    subcategory_1 text COLLATE pg_catalog."default",
    CONSTRAINT subcategory_pkey PRIMARY KEY (subcategory_id)
);