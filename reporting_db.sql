--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

-- Started on 2016-03-04 01:08:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE reporting;
--
-- TOC entry 2112 (class 1262 OID 16394)
-- Name: reporting; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE reporting WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Ukrainian_Ukraine.1251' LC_CTYPE = 'Ukrainian_Ukraine.1251';


ALTER DATABASE reporting OWNER TO admin;

\connect reporting

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2113 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2115 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 183 (class 1259 OID 16405)
-- Name: employee; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE employee (
    name character varying(50),
    occupation character varying(50),
    place character varying(50),
    country character varying(50)
);


ALTER TABLE employee OWNER TO admin;

--
-- TOC entry 182 (class 1259 OID 16400)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE schema_migrations (
    id bigint NOT NULL
);


ALTER TABLE schema_migrations OWNER TO admin;

--
-- TOC entry 181 (class 1259 OID 16395)
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE users (
    id character varying(32) NOT NULL,
    pass character varying(100)
);


ALTER TABLE users OWNER TO admin;

--
-- TOC entry 2107 (class 0 OID 16405)
-- Dependencies: 183
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 2106 (class 0 OID 16400)
-- Dependencies: 182
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO schema_migrations (id) VALUES (20160304002332);


--
-- TOC entry 2105 (class 0 OID 16395)
-- Dependencies: 181
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO users (id, pass) VALUES ('foo1', 'bar');
INSERT INTO users (id, pass) VALUES ('foo2', 'bar');
INSERT INTO users (id, pass) VALUES ('foo3', 'bar');
INSERT INTO users (id, pass) VALUES ('baz', NULL);
INSERT INTO users (id, pass) VALUES ('bar', 'baz');
INSERT INTO users (id, pass) VALUES ('a-new-user', 'foo');
INSERT INTO users (id, pass) VALUES ('foo', 'bar');
INSERT INTO users (id, pass) VALUES ('another-user', 'foo');


--
-- TOC entry 1990 (class 2606 OID 16404)
-- Name: schema_migrations_id_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_id_key UNIQUE (id);


--
-- TOC entry 1988 (class 2606 OID 16399)
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2114 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-03-04 01:08:05

--
-- PostgreSQL database dump complete
--

