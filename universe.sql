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
    name character varying NOT NULL,
    constellation character varying,
    age_in_million_of_years integer,
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    age_in_million_of_years integer,
    diameter numeric,
    description text,
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
-- Name: nebulae; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebulae (
    nebulae_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_million_of_years integer
);


ALTER TABLE public.nebulae OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebulae_nebulae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebulae_nebulae_id_seq OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebulae_nebulae_id_seq OWNED BY public.nebulae.nebulae_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    age_in_million_of_years integer,
    diameter numeric,
    description text,
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
    name character varying NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_of_years integer,
    description text,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebulae nebulae_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae ALTER COLUMN nebulae_id SET DEFAULT nextval('public.nebulae_nebulae_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda', 10000, 'Majestic spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 'Sagittarius', 13600, 'Home galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'Triangulum', 15000, 'Active star-forming regions');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'Virgo', 9000, 'Resembling a broad-brimmed hat or a sombrero');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'Ursa Major', 25000, 'The Pinwheel Galaxy');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Canes Venatici', 400, 'The Whirlpool Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 4500, 3474, 'Natural Satellite', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4600, 22, 'Captured asteroids', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4600, 12, 'Captured asteroids', 4);
INSERT INTO public.moon VALUES (4, 'Io', false, 4600, 3643, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (5, 'Europa', false, 4600, 3121, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 4600, 5268, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 4600, 4821, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', false, 4600, 267, 'Third-largest moon of Jupiter', 5);
INSERT INTO public.moon VALUES (9, 'Himalia', false, 4600, 170, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (10, 'Elara', false, 4600, 76, 'Small irregular moon of Jupiter', 5);
INSERT INTO public.moon VALUES (11, 'Lysithea', false, 4600, 36, 'Small irregular moon of Jupiter', 5);
INSERT INTO public.moon VALUES (12, 'Moon12', false, 4600, 3474, 'Natural Satellite', 10);
INSERT INTO public.moon VALUES (13, 'Moon13', false, 123, 123, 'Natural Satellite', 10);
INSERT INTO public.moon VALUES (14, 'Moon14', false, 456, 345, 'Natural Satellite', 6);
INSERT INTO public.moon VALUES (15, 'Moon15', false, 6789, 653, 'Natural Satellite', 7);
INSERT INTO public.moon VALUES (16, 'Moon16', false, 123, 124, 'Natural Satellite', 8);
INSERT INTO public.moon VALUES (17, 'Moon17', false, 452, 66, 'Natural Satellite', 9);
INSERT INTO public.moon VALUES (18, 'Moon18', false, 6845, 441, 'Natural Satellite', 10);
INSERT INTO public.moon VALUES (19, 'Moon19', false, 745, 123, 'Natural Satellite', 10);
INSERT INTO public.moon VALUES (20, 'Moon20', false, 4556, 5566, 'Natural Satellite', 10);


--
-- Data for Name: nebulae; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebulae VALUES (1, 'Orion Nebula', 2);
INSERT INTO public.nebulae VALUES (2, 'Crab Nebula', 0);
INSERT INTO public.nebulae VALUES (3, 'Helix Nebula', 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 4600, 4879, 'Smallest and closest planet to the Sun', 2);
INSERT INTO public.planet VALUES (2, 'Venus', false, 4600, 12104, 'Earth sister planet', 2);
INSERT INTO public.planet VALUES (3, 'Earth', true, 4600, 12742, 'Our home planet', 2);
INSERT INTO public.planet VALUES (4, 'Mars', false, 4600, 67779, 'Red Planet', 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 4600, 139820, 'Largest planet in the solar system', 2);
INSERT INTO public.planet VALUES (6, 'Kepler-186f', false, 4000, NULL, 'Located in the habitable zone of its host star, Kepler-186.', 3);
INSERT INTO public.planet VALUES (7, 'Trappist-1e:', false, 7600, 8680, 'Located within the habitable zone', 4);
INSERT INTO public.planet VALUES (8, 'HD 209458 b', false, 4000, 272000, 'Known as Osiris', 4);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', false, 4850, 20500, 'Located within the habitable zone', 5);
INSERT INTO public.planet VALUES (10, 'WASP-12b', false, 1000, 199000, 'Orbits very close to its host star', 6);
INSERT INTO public.planet VALUES (11, 'Kepler-16b', false, 4600, 20939, 'Circumbinary planet', 6);
INSERT INTO public.planet VALUES (12, 'HD 189733 b', false, 4000, 138884, 'Gas giant with a deep blue coloration', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', false, false, 350, 'Binary star system', 1);
INSERT INTO public.star VALUES (2, 'Sun', true, true, 4600, 'Home Star', 2);
INSERT INTO public.star VALUES (3, 'Delta Trianguli', false, false, 25, 'Emits a white or bluish-white light', 3);
INSERT INTO public.star VALUES (4, 'Gamma Virginis', false, false, 750, 'Consisting of two similar stars orbiting each other', 4);
INSERT INTO public.star VALUES (5, 'Alkaid', false, false, 42, 'Blue giant star', 5);
INSERT INTO public.star VALUES (6, 'Zeta Canum Venaticorum', false, false, 400, 'Binary star system', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebulae_nebulae_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: nebulae nebulae_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_name_key UNIQUE (name);


--
-- Name: nebulae nebulae_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_pkey PRIMARY KEY (nebulae_id);


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

