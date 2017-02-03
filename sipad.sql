--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: sipad; Type: SCHEMA; Schema: -; Owner: comum_user
--

CREATE SCHEMA sipad;


ALTER SCHEMA sipad OWNER TO comum_user;

SET search_path = sipad, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: usuario_sipad; Type: TABLE; Schema: sipad; Owner: comum_user; Tablespace: 
--

CREATE TABLE usuario_sipad (
    id_usuario_sipad integer NOT NULL,
    login character varying(50),
    password character varying(255),
    remember_token character varying(255)
);


ALTER TABLE sipad.usuario_sipad OWNER TO comum_user;

--
-- Name: usuario_sipad_id_sequence; Type: SEQUENCE; Schema: sipad; Owner: comum_user
--

CREATE SEQUENCE usuario_sipad_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE sipad.usuario_sipad_id_sequence OWNER TO comum_user;

--
-- Name: usuario_sipad_id_sequence; Type: SEQUENCE SET; Schema: sipad; Owner: comum_user
--

SELECT pg_catalog.setval('usuario_sipad_id_sequence', 1, false);


--
-- Name: usuario_sipad_id_usuario_sipad_seq; Type: SEQUENCE; Schema: sipad; Owner: comum_user
--

CREATE SEQUENCE usuario_sipad_id_usuario_sipad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sipad.usuario_sipad_id_usuario_sipad_seq OWNER TO comum_user;

--
-- Name: usuario_sipad_id_usuario_sipad_seq; Type: SEQUENCE OWNED BY; Schema: sipad; Owner: comum_user
--

ALTER SEQUENCE usuario_sipad_id_usuario_sipad_seq OWNED BY usuario_sipad.id_usuario_sipad;


--
-- Name: usuario_sipad_id_usuario_sipad_seq; Type: SEQUENCE SET; Schema: sipad; Owner: comum_user
--

SELECT pg_catalog.setval('usuario_sipad_id_usuario_sipad_seq', 9, true);


--
-- Name: id_usuario_sipad; Type: DEFAULT; Schema: sipad; Owner: comum_user
--

ALTER TABLE usuario_sipad ALTER COLUMN id_usuario_sipad SET DEFAULT nextval('usuario_sipad_id_usuario_sipad_seq'::regclass);


--
-- Data for Name: usuario_sipad; Type: TABLE DATA; Schema: sipad; Owner: comum_user
--

COPY usuario_sipad (id_usuario_sipad, login, password, remember_token) FROM stdin;
\.


--
-- Name: usuario_sipad; Type: ACL; Schema: sipad; Owner: comum_user
--

REVOKE ALL ON TABLE usuario_sipad FROM PUBLIC;
REVOKE ALL ON TABLE usuario_sipad FROM comum_user;
GRANT ALL ON TABLE usuario_sipad TO comum_user;
GRANT ALL ON TABLE usuario_sipad TO PUBLIC;


--
-- PostgreSQL database dump complete
--

