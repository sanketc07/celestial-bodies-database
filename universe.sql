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
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    no_of_stars integer NOT NULL,
    type character varying(20) NOT NULL,
    no_of_planets integer NOT NULL,
    mass numeric(4,2),
    description text
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
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(40) NOT NULL,
    month character varying(15),
    planet_id integer
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_in_km integer NOT NULL,
    human_visitors integer NOT NULL,
    surface_area_sq_miles integer,
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
    name character varying(40) NOT NULL,
    distance_from_sun_km integer,
    one_way_light_time_to_sun numeric(2,2),
    light_of_year integer,
    type character varying(20),
    star_id integer,
    life_exist boolean,
    water_exist boolean
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
    name character varying(40) NOT NULL,
    size integer,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
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
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'The Milkey Way', 400, 'Spiral', 400, 1.54, 'Our Solar System');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 100, 'Spiral', 100, 1.50, 'The andromeda Galaxy also  known as Messier 31');
INSERT INTO public.galaxy VALUES (3, 'NGC 2608', 100, 'Spiral', 100, 1.25, 'The Sculptor Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Messier 109', 200, 'Spiral', 200, 8.25, 'Galaxy with exhibiting a weak inner ring structure');
INSERT INTO public.galaxy VALUES (6, 'Messier 63', 400, 'Spiral', 400, 3.25, 'Galaxy inthe northern constellation of canes venatici.');
INSERT INTO public.galaxy VALUES (7, 'Messier 62', 300, 'Spiral', 300, 4.25, 'Galaxy inthe northern constellation.');


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'Quardrantids', 'January', 1);
INSERT INTO public.meteor VALUES (2, 'Lyrids', 'April', 1);
INSERT INTO public.meteor VALUES (3, 'Eta Aquarids', 'May', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth Moon', 245317, 24, 3545, 1);
INSERT INTO public.moon VALUES (2, 'Adrastea', 2453417, 0, 3545, 6);
INSERT INTO public.moon VALUES (3, 'Aitne', 2453417, 0, 3545, 6);
INSERT INTO public.moon VALUES (4, 'Amalthea', 2453417, 0, 3545, 6);
INSERT INTO public.moon VALUES (5, 'Ananke', 2453417, 0, 3545, 6);
INSERT INTO public.moon VALUES (6, 'Aoede', 2453417, 0, 3545, 6);
INSERT INTO public.moon VALUES (7, 'Arche', 2453417, 0, 3545, 6);
INSERT INTO public.moon VALUES (8, 'Autonoe', 2453417, 0, 3545, 6);
INSERT INTO public.moon VALUES (9, 'Callirrhoe', 243417, 0, 345, 6);
INSERT INTO public.moon VALUES (10, 'Callisto', 243417, 0, 345, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 243417, 0, 345, 7);
INSERT INTO public.moon VALUES (12, 'Thalassa', 22417, 0, 345, 7);
INSERT INTO public.moon VALUES (13, 'Sao', 22417, 0, 345, 7);
INSERT INTO public.moon VALUES (14, 'Naiad', 22417, 0, 345, 7);
INSERT INTO public.moon VALUES (15, 'Despina', 22417, 0, 345, 7);
INSERT INTO public.moon VALUES (17, 'Halimede', 22417, 0, 345, 7);
INSERT INTO public.moon VALUES (18, 'Hippocamp', 22417, 0, 345, 7);
INSERT INTO public.moon VALUES (19, 'Proteus', 22417, 0, 345, 7);
INSERT INTO public.moon VALUES (20, 'Laomedeia', 22417, 0, 345, 7);
INSERT INTO public.moon VALUES (21, 'Nereid', 22417, 0, 345, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12345, 0.20, 15, 'life', 1, true, false);
INSERT INTO public.planet VALUES (2, 'Mercury', 145, 0.30, 52, 'life', 2, false, false);
INSERT INTO public.planet VALUES (3, 'Venus', 1145, 0.53, 22, 'life', 1, true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1245, 0.33, 52, 'life', 1, true, true);
INSERT INTO public.planet VALUES (5, 'Saturn', 1245, 0.33, 52, 'life', 1, true, true);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1245, 0.33, 52, 'life', 1, true, true);
INSERT INTO public.planet VALUES (7, 'Neptune', 1245, 0.33, 52, 'life', 2, true, true);
INSERT INTO public.planet VALUES (8, 'Pluto', 1545, 0.53, 52, 'life', 2, false, false);
INSERT INTO public.planet VALUES (9, 'Eris', 1555, 0.53, 52, 'life', 3, false, false);
INSERT INTO public.planet VALUES (10, 'Haumea', 1555, 0.53, 52, 'life', 3, false, false);
INSERT INTO public.planet VALUES (11, 'Makemake', 1555, 0.53, 52, 'life', 4, false, false);
INSERT INTO public.planet VALUES (12, 'Ceres', 1555, 0.53, 52, 'dream', 5, false, false);
INSERT INTO public.planet VALUES (13, 'Planet X', 1555, 0.53, 52, 'dream', 6, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Barnards star', 4, 6, 1);
INSERT INTO public.star VALUES (2, 'Luhman 16A', 2, 6, 1);
INSERT INTO public.star VALUES (3, 'Wise 0855-0714', 4, 7, 1);
INSERT INTO public.star VALUES (4, 'Epsilon Eridani', 5, 10, 1);
INSERT INTO public.star VALUES (5, 'GroomBridge 34A', 6, 11, 1);
INSERT INTO public.star VALUES (6, 'Cygni A', 6, 11, 1);
INSERT INTO public.star VALUES (7, 'Procyon', 5, 11, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_month_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_month_key UNIQUE (month);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: meteor meteor_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

