--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(20),
    galaxy_id integer NOT NULL,
    type text,
    constellation character varying(60) NOT NULL,
    origin_of_name text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20),
    moon_id integer NOT NULL,
    planet character varying(20),
    year_discover integer,
    prov_destin boolean NOT NULL,
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
    name character varying(20),
    planet_id integer NOT NULL,
    constellation character varying(20),
    have_moons boolean NOT NULL,
    number_of_moons integer
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
-- Name: sattelite_const; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sattelite_const (
    name character varying(20) NOT NULL,
    sattelite_const_id integer NOT NULL,
    planet character varying(20),
    planet_id integer
);


ALTER TABLE public.sattelite_const OWNER TO freecodecamp;

--
-- Name: sattelite_const_sattelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sattelite_const_sattelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sattelite_const_sattelite_id_seq OWNER TO freecodecamp;

--
-- Name: sattelite_const_sattelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sattelite_const_sattelite_id_seq OWNED BY public.sattelite_const.sattelite_const_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20),
    star_id integer NOT NULL,
    constellation character varying(60) NOT NULL,
    flamsteed_designation integer,
    absolute_magnitude numeric(3,2)
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sattelite_const sattelite_const_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite_const ALTER COLUMN sattelite_const_id SET DEFAULT nextval('public.sattelite_const_sattelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 1, 'barred spiral', 'Andromeda', 'area of the sky it appears');
INSERT INTO public.galaxy VALUES ('Antennae Galaxies', 2, 'pair of interacting galaxies', 'Corvus', 'similar to insect');
INSERT INTO public.galaxy VALUES ('Backward Galaxy', 3, 'face-on unbarred spiral', 'Centaurus', 'appears to rotate backwards');
INSERT INTO public.galaxy VALUES ('Black Eye Galaxy', 4, 'spiral', 'Coma Berenices', 'spectacular dark band');
INSERT INTO public.galaxy VALUES ('Bodes Galaxy', 5, 'spiral', 'Ursa Major', 'named after Johann Bode');
INSERT INTO public.galaxy VALUES ('Butterfly Galaxies', 6, 'unbarred spiral', 'Virgo', 'similar to butterfly');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 1, 'Earth', 0, false, 3);
INSERT INTO public.moon VALUES ('Phobos', 2, 'Mars', 1877, false, 4);
INSERT INTO public.moon VALUES ('Deimos', 4, 'Mars', 1877, false, 4);
INSERT INTO public.moon VALUES ('Io', 5, 'Jupiter', 1610, false, 5);
INSERT INTO public.moon VALUES ('Europa', 38, 'Jupiter', 1610, false, 5);
INSERT INTO public.moon VALUES ('Ganymede', 39, 'Jupiter', 1610, false, 5);
INSERT INTO public.moon VALUES ('Callisto', 40, 'Jupiter', 1610, false, 5);
INSERT INTO public.moon VALUES ('Amalthea', 41, 'Jupiter', 1892, false, 5);
INSERT INTO public.moon VALUES ('Himalia', 42, 'Jupiter', 1904, false, 5);
INSERT INTO public.moon VALUES ('Elara', 43, 'Jupiter', 1905, false, 5);
INSERT INTO public.moon VALUES ('Pasiphae', 44, 'Jupiter', 1908, false, 5);
INSERT INTO public.moon VALUES ('Sinope', 45, 'Jupiter', 1914, false, 5);
INSERT INTO public.moon VALUES ('Lysithea', 47, 'Jupiter', 1938, false, 5);
INSERT INTO public.moon VALUES ('Carme', 48, 'Jupiter', 1938, false, 5);
INSERT INTO public.moon VALUES ('Ananke', 49, 'Jupiter', 1938, false, 5);
INSERT INTO public.moon VALUES ('Leda', 50, 'Jupiter', 1974, false, 5);
INSERT INTO public.moon VALUES ('Thebe', 51, 'Jupiter', 1979, true, 5);
INSERT INTO public.moon VALUES ('Adrastea', 52, 'Jupiter', 1979, true, 5);
INSERT INTO public.moon VALUES ('Metis', 53, 'Jupiter', 1979, true, 5);
INSERT INTO public.moon VALUES ('Callirrhoe', 54, 'Jupiter', 1999, true, 5);
INSERT INTO public.moon VALUES ('Themisto', 55, 'Jupiter', 2005, true, 5);
INSERT INTO public.moon VALUES ('Megacite', 56, 'Jupiter', 2000, true, 5);
INSERT INTO public.moon VALUES ('Taygete', 57, 'Jupiter', 2000, true, 5);
INSERT INTO public.moon VALUES ('Chaldene', 58, 'Jupiter', 2000, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 'Andromeda', false, 0);
INSERT INTO public.planet VALUES ('Venus', 2, 'Andromeda', false, 0);
INSERT INTO public.planet VALUES ('Earth', 3, 'Andromeda', true, 1);
INSERT INTO public.planet VALUES ('Mars', 4, 'Andromeda', true, 2);
INSERT INTO public.planet VALUES ('Jupiter', 5, 'Andromeda', true, 92);
INSERT INTO public.planet VALUES ('Saturn', 6, 'Andromeda', true, 83);
INSERT INTO public.planet VALUES ('Uranus', 7, 'Andromeda', true, 27);
INSERT INTO public.planet VALUES ('Neptune', 8, 'Andromeda', true, 14);
INSERT INTO public.planet VALUES ('Pluto', 9, 'Andromeda', true, 5);
INSERT INTO public.planet VALUES ('Ceres', 10, 'Andromeda', false, 0);
INSERT INTO public.planet VALUES ('Eris', 11, 'Andromeda', true, 1);
INSERT INTO public.planet VALUES ('Makemake', 12, 'Andromeda', false, 0);


--
-- Data for Name: sattelite_const; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sattelite_const VALUES ('GEO', 1, 'Earth', 3);
INSERT INTO public.sattelite_const VALUES ('MEO', 2, 'Earth', 3);
INSERT INTO public.sattelite_const VALUES ('LEO', 3, 'Earth', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('alpha And', 2, 'Andromeda', 21, -0.30);
INSERT INTO public.star VALUES ('Gamma Corvi', 3, 'Corvus', 4, -0.94);
INSERT INTO public.star VALUES ('Alpha Centauri', 4, 'Centaurus', 363, 4.34);
INSERT INTO public.star VALUES ('Beta Comae Berenices', 5, 'Coma Berenices', 43, 4.42);
INSERT INTO public.star VALUES ('Epsilon UM', 6, 'Ursa Major', 77, -0.21);
INSERT INTO public.star VALUES ('Alpha Andromedae', 1, 'Virgo', 67, -3.55);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 58, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: sattelite_const_sattelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sattelite_const_sattelite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_key UNIQUE (constellation);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: sattelite_const sattelite_const_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite_const
    ADD CONSTRAINT sattelite_const_name_key UNIQUE (name);


--
-- Name: sattelite_const sattelite_const_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite_const
    ADD CONSTRAINT sattelite_const_pkey PRIMARY KEY (sattelite_const_id);


--
-- Name: star star_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_key UNIQUE (constellation);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_constellation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_constellation_fkey FOREIGN KEY (constellation) REFERENCES public.star(constellation);


--
-- Name: sattelite_const sattelite_const_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite_const
    ADD CONSTRAINT sattelite_const_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_constellation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_fkey FOREIGN KEY (constellation) REFERENCES public.galaxy(constellation);


--
-- PostgreSQL database dump complete
--