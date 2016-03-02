--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

-- Started on 2016-03-03 00:59:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2095 (class 0 OID 16395)
-- Dependencies: 181
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY users (id, pass) FROM stdin;
foo1	bar
foo2	bar
foo3	bar
baz	\N
bar	baz
a-new-user	foo
\.


-- Completed on 2016-03-03 00:59:03

--
-- PostgreSQL database dump complete
--

