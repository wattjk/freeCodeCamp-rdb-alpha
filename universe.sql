--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    gravity_in_newtons numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_types_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size integer NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    gravity_in_newtons numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    gravity_in_newtons numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    gravity_in_newtons numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 3, 0, NULL, 'Human home', true, false, 1);
INSERT INTO public.galaxy VALUES (2, 'Messier', 33, 400, NULL, 'In the Virgo Cluster', false, false, 2);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 15, 302, NULL, 'A very strange place', false, false, 1);
INSERT INTO public.galaxy VALUES (4, 'Large Megallanic', 2, 501, NULL, 'Satelite of Milky Way', false, false, 3);
INSERT INTO public.galaxy VALUES (5, 'Small Megallanic', 2, 599, NULL, 'Also a satelite of Milky Way', false, false, 3);
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', 2, 456, NULL, 'Closest to earth', false, false, 2);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 101, NULL);
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 4002, NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 9999, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 1, 0.66, 'Our light at night', false, true, 1);
INSERT INTO public.moon VALUES (3, 'Tune', NULL, 1, 0.66, 'Their light at night', false, true, 3);
INSERT INTO public.moon VALUES (4, 'Doon', NULL, 1, 0.66, 'another plant''s light at night', false, true, 4);
INSERT INTO public.moon VALUES (5, 'Poon', 3, 1, 0.66, 'another plant''s light at night', false, true, 4);
INSERT INTO public.moon VALUES (6, 'Roon', 5, 2, 1.66, 'another planet''s light at night', false, true, 7);
INSERT INTO public.moon VALUES (7, 'Boon', 5, 2, 1.66, 'another planet''s light at night', false, true, 7);
INSERT INTO public.moon VALUES (8, 'Noom', 5, 2, 1.66, 'another planet''s light at night', false, true, 7);
INSERT INTO public.moon VALUES (9, 'Blue Moon', 2, 4, 8.66, 'Yet another planet''s light at night', false, true, 6);
INSERT INTO public.moon VALUES (10, 'Cheese', 2, 4, 8.66, 'Will melt soon', false, true, 5);
INSERT INTO public.moon VALUES (11, 'Silvery', 2, 4, 1.86, 'To reflect light', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Plastercine', 1, 4, 3.66, 'Looks man made', false, true, 1);
INSERT INTO public.moon VALUES (12, 'Reminder', 2, 4, 1.86, 'Of Creation', false, true, 1);
INSERT INTO public.moon VALUES (13, 'Dark', 2, 4, 1.86, 'When did this really happen?', false, true, 1);
INSERT INTO public.moon VALUES (14, 'Eclipse', 2, 6, 0.96, NULL, false, true, 4);
INSERT INTO public.moon VALUES (15, 'Solar Burst', 2, 6, 0.96, 'Struggling to come up with names!', false, true, 4);
INSERT INTO public.moon VALUES (16, 'Europa', 2, 7, 0.96, 'Beautiful', false, true, 3);
INSERT INTO public.moon VALUES (17, 'Titania', 2, 7, 0.96, 'Strong name', false, true, 3);
INSERT INTO public.moon VALUES (18, 'Hydra', 2, 7, 0.96, 'Must be watery', false, true, 6);
INSERT INTO public.moon VALUES (20, 'Kerberos', 2, 7, 0.96, 'Must be watery', false, true, 12);
INSERT INTO public.moon VALUES (21, 'Nix', 2, 7, 0.96, 'Must be watery', false, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, 0, 9.82, 'The blue planet and our home', true, true, 7);
INSERT INTO public.planet VALUES (3, 'Mercury', 1, 15, 1.82, 'Close by', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 2, 21, 6.82, 'I am your fire', false, true, 7);
INSERT INTO public.planet VALUES (5, 'Mars', 2, 26, 15.82, 'Indigenous are Martians', false, true, 7);
INSERT INTO public.planet VALUES (6, 'Jupiter', 2, 29, 19.82, 'Named after the Roman god of war', false, true, 7);
INSERT INTO public.planet VALUES (7, 'Saturn', 2, 29, 25.82, 'Has beautiful rings', false, true, 7);
INSERT INTO public.planet VALUES (8, 'Uranus', 2, 36, 1.82, 'Cold and far away', false, true, 7);
INSERT INTO public.planet VALUES (9, 'Neptune', 2, 39, 5.82, 'Sounds like a sea god', false, true, 7);
INSERT INTO public.planet VALUES (10, 'Tormance', 2, 800, 9.11, 'Fictional', true, true, 3);
INSERT INTO public.planet VALUES (11, 'Scorpius', 2, 114, 9.66, 'Really Fictional', true, true, 6);
INSERT INTO public.planet VALUES (12, 'Canis', 2, 20, 0.66, 'Completely Fictional', true, true, 1);
INSERT INTO public.planet VALUES (13, 'Orion', 2, 99, 4.36, 'Truth is stranger than fiction', false, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 2, 50, 3.00, 'Brightest', false, true, 1);
INSERT INTO public.star VALUES (2, 'Vega', 3, 81, 1.42, 'Bright blue white star', false, true, 1);
INSERT INTO public.star VALUES (3, 'Archturus', 9, 55, 2.45, 'Red Giant star', false, true, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 9, 55, 2.45, 'Blue super huge', false, true, 2);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 9, 22, 6.35, 'Our nearest star', false, true, 1);
INSERT INTO public.star VALUES (6, 'Antares', 4, 82, 3.33, 'Red Super giant', false, true, 3);
INSERT INTO public.star VALUES (7, 'Sun', NULL, 183, 85.85, 'A ball of fire', false, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

