--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: attendee; Type: TABLE; Schema: public; Owner: matte; Tablespace: 
--

CREATE TABLE attendee (
    name character varying NOT NULL,
    rspv boolean DEFAULT true,
    elected boolean DEFAULT false,
    no_elegible boolean DEFAULT false
);


ALTER TABLE public.attendee OWNER TO matte;

--
-- Name: meeting; Type: TABLE; Schema: public; Owner: matte; Tablespace: 
--

CREATE TABLE meeting (
    event_date date NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.meeting OWNER TO matte;

--
-- Data for Name: attendee; Type: TABLE DATA; Schema: public; Owner: matte
--

COPY attendee (name, rspv, elected, no_elegible) FROM stdin;
Orestes	t	f	f
edgar Lizarazo	t	f	f
antonio	t	f	f
Eduardo	t	f	f
krasnogors­k	t	f	f
Javier Camuñas	t	f	f
Santos	t	f	f
Guillermo Saenz de Santa	t	f	f
Ivan Perez	t	f	f
José Daniel González Mato	t	f	f
Jerolba	t	f	f
Luis Alberto Adan Gonzalez	t	f	f
Ivan	t	f	f
Luis	t	f	f
Stéphan Lenglart	t	f	f
David Cordero	t	f	f
Juan Arias	t	f	f
Javier de la Torre	t	f	f
Jorge Arévalo	t	f	f
Daniel Lombraña González	t	f	f
Miguel	t	f	f
Alfonso Uceda	t	f	f
Fernando Blat	t	f	f
Carlos Sánchez Pérez	t	f	f
eLafo	t	f	f
jaime	t	f	f
Alejandro Gómez	f	f	f
William Chiquito	f	f	f
Alberto Vilches	f	f	f
Jorge	f	f	f
Antonio de la Torre	f	f	f
Iván López	f	f	f
Alejandro Brito Monedero	f	f	f
Matteo Melli	t	f	t
Álvaro Hernández Tortosa	t	f	t
César Calvo Pinilla	t	f	t
\.


--
-- Data for Name: meeting; Type: TABLE DATA; Schema: public; Owner: matte
--

COPY meeting (event_date, name) FROM stdin;
2014-02-04	¡Meetup de febrero de PostgreSQL España!
\.


--
-- Name: attendee_pkey; Type: CONSTRAINT; Schema: public; Owner: matte; Tablespace: 
--

ALTER TABLE ONLY attendee
    ADD CONSTRAINT attendee_pkey PRIMARY KEY (name);


--
-- Name: meeting_pkey; Type: CONSTRAINT; Schema: public; Owner: matte; Tablespace: 
--

ALTER TABLE ONLY meeting
    ADD CONSTRAINT meeting_pkey PRIMARY KEY (event_date);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

