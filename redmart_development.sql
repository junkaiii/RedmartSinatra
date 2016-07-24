--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: kai
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO kai;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: kai
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO kai;

--
-- Name: users; Type: TABLE; Schema: public; Owner: kai
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying,
    address character varying,
    password character varying,
    cc_number character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE users OWNER TO kai;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: kai
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO kai;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kai
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: kai
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: kai
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2016-07-22 03:02:33.221351	2016-07-22 03:02:33.221351
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: kai
--

COPY schema_migrations (version) FROM stdin;
20160721070514
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: kai
--

COPY users (id, name, email, address, password, cc_number, created_at, updated_at) FROM stdin;
1	Quentin Armstrong Sr.	major@mckenzie.com	185 Sawayn Track	\N	\N	2016-07-22 03:02:33.778316	2016-07-22 03:02:33.778316
2	Geraldine Konopelski	kaci.gislason@johnson.biz	90338 Fae Rapids	\N	\N	2016-07-22 03:02:33.782026	2016-07-22 03:02:33.782026
3	Felicia Kohler	lupe.trantow@borer.com	9059 Monahan Expressway	\N	\N	2016-07-22 03:02:33.784569	2016-07-22 03:02:33.784569
4	Myrtle Miller	kattie@donnelly.net	738 Konopelski Harbor	\N	\N	2016-07-22 03:02:33.78727	2016-07-22 03:02:33.78727
5	Demond Witting	kylee@block.io	837 Thora Bypass	\N	\N	2016-07-22 03:02:33.78991	2016-07-22 03:02:33.78991
6	Merritt Reilly Sr.	ali@stark.biz	64984 Schumm Row	\N	\N	2016-07-22 03:02:33.792447	2016-07-22 03:02:33.792447
7	Maverick Schamberger	beryl@gusikowski.biz	10146 Bernier Village	\N	\N	2016-07-22 03:02:33.794482	2016-07-22 03:02:33.794482
8	Michaela Littel	dorris.schimmel@kilback.co	919 Reilly Common	\N	\N	2016-07-22 03:02:33.796477	2016-07-22 03:02:33.796477
9	Cathy Bruen	adolfo@schmidt.org	4091 Ruecker Parkway	\N	\N	2016-07-22 03:02:33.798319	2016-07-22 03:02:33.798319
10	Norwood Stoltenberg V	bradly@ernsergulgowski.io	646 Franz Way	\N	\N	2016-07-22 03:02:33.80005	2016-07-22 03:02:33.80005
11	Miss Alfred Raynor	jazmin@bogisichzboncak.io	7891 Cara Drives	\N	\N	2016-07-22 03:02:33.801744	2016-07-22 03:02:33.801744
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kai
--

SELECT pg_catalog.setval('users_id_seq', 11, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: kai
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kai
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: kai
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: kai
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM kai;
GRANT ALL ON SCHEMA public TO kai;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

