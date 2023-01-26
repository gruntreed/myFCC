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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(15) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_in_1m_ly numeric(10,3),
    type text,
    solar_mass_in_billions integer,
    size_in_1k_ly numeric(10,3)
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
    name character varying(30) NOT NULL,
    radius_in_km numeric(10,3),
    mass_in_kg numeric(10,3),
    surface_gravity_g numeric(5,3),
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
    name character varying(30) NOT NULL,
    mass_relative_to_earth numeric(10,3),
    has_life boolean,
    has_moon boolean,
    type text,
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
    name character varying(30) NOT NULL,
    distance_in_ly numeric(10,3),
    type text,
    solar_mass integer,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Sagittarius', 1);
INSERT INTO public.constellation VALUES (2, 'Dorado/Mensa', 2);
INSERT INTO public.constellation VALUES (3, 'Tucana', 3);
INSERT INTO public.constellation VALUES (4, 'Andromeda', 4);
INSERT INTO public.constellation VALUES (5, 'Triangulum', 5);
INSERT INTO public.constellation VALUES (6, 'Centaurus', 6);
INSERT INTO public.constellation VALUES (7, 'Ursa Major', 7);
INSERT INTO public.constellation VALUES (8, 'Sculptor', 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.000, 'SB(rs)bc', 1150, 87.400);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 0.160, 'SB(s)m', 138, 32.200);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 0.200, 'SB(s)m', 7, 18.900);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 2.500, 'SA(s)b', 1500, 152.000);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 2.900, 'SA(s)cd', 50, 61.120);
INSERT INTO public.galaxy VALUES (6, 'Centaurus', 13.700, 'S0', NULL, 60.000);
INSERT INTO public.galaxy VALUES (7, 'Bodes Galaxy', 12.000, 'SA(s)bc', NULL, 96.000);
INSERT INTO public.galaxy VALUES (8, 'Sculptor Galaxy', 12.000, 'SAB(s)c', NULL, 90.000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 2634.100, 148.200, 0.146, 5);
INSERT INTO public.moon VALUES (2, 'Titan', 2574.700, 134.500, 0.138, 6);
INSERT INTO public.moon VALUES (3, 'Callisto', 2410.300, 107.600, 0.126, 5);
INSERT INTO public.moon VALUES (4, 'Io', 1821.600, 89.300, 0.183, 5);
INSERT INTO public.moon VALUES (5, 'Moon', 1737.050, 73.400, 0.165, 3);
INSERT INTO public.moon VALUES (6, 'Europa', 1560.800, 48.000, 0.134, 5);
INSERT INTO public.moon VALUES (7, 'Triton', 1353.400, 21.400, 0.080, 8);
INSERT INTO public.moon VALUES (8, 'Titania', 788.900, 3.400, 0.040, 7);
INSERT INTO public.moon VALUES (9, 'Rhea', 764.300, 2.310, 0.027, 6);
INSERT INTO public.moon VALUES (10, 'Oberon', 761.400, 3.080, 0.036, 7);
INSERT INTO public.moon VALUES (11, 'Iapetus', 735.600, 1.810, 0.022, 6);
INSERT INTO public.moon VALUES (12, 'Charon', 603.600, 1.530, 0.029, 11);
INSERT INTO public.moon VALUES (13, 'Umbriel', 584.700, 1.280, 0.023, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 578.900, 1.250, 0.280, 7);
INSERT INTO public.moon VALUES (15, 'Dione', 561.400, 1.100, 0.024, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 533.000, 0.617, 0.015, 6);
INSERT INTO public.moon VALUES (17, 'Dysnomia', 350.000, 0.300, 0.160, 16);
INSERT INTO public.moon VALUES (18, 'Encleladus', 252.100, 0.108, 0.011, 6);
INSERT INTO public.moon VALUES (19, 'Miranda', 235.800, 0.064, 0.008, 7);
INSERT INTO public.moon VALUES (20, 'Vanth', 221.000, 0.040, 0.006, 10);
INSERT INTO public.moon VALUES (21, 'Mimas', 198.200, 0.038, 0.006, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.060, false, false, 'Major Plant', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.810, false, false, 'Major Plant', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1.000, true, true, 'Major Plant', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0.110, false, true, 'Major Plant', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 317.830, false, true, 'Major Plant', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 95.160, false, true, 'Major Plant', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 19.190, false, true, 'Major Plant', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 17.150, false, true, 'Major Plant', 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 0.000, false, false, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (10, 'Orcus', 0.000, false, true, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (11, 'Pluto', 0.002, false, true, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 0.001, false, true, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (13, 'Quaoar', 0.000, false, true, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (14, 'Makemake', 0.001, false, true, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (15, 'Gonggong', 0.000, false, true, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (16, 'Eris', 0.003, false, true, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (17, 'Sedna', NULL, false, false, 'Dwarf Planet', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 0.000, 'Yellow Dwarf', 1, 1);
INSERT INTO public.star VALUES (2, 'Alpha Doradus', 169.000, 'White Giant', 3, 2);
INSERT INTO public.star VALUES (3, 'Ext', 749.000, 'Yellow Giant', 2, 3);
INSERT INTO public.star VALUES (4, 'Bake', 110.000, 'Green Dwarf', 1, 4);
INSERT INTO public.star VALUES (5, 'Exxon', 189.000, 'Blue-white', 2, 5);
INSERT INTO public.star VALUES (6, 'Arrow', 116.000, 'Yellow Giant', 4, 6);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 8, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_id_key UNIQUE (constellation_id);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

