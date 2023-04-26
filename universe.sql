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
-- Name: astronomical_object; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomical_object (
    astronomical_object_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    space_mission_id integer,
    description text
);


ALTER TABLE public.astronomical_object OWNER TO freecodecamp;

--
-- Name: astronomical_object_astronomical_object_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomical_object_astronomical_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomical_object_astronomical_object_id_seq OWNER TO freecodecamp;

--
-- Name: astronomical_object_astronomical_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomical_object_astronomical_object_id_seq OWNED BY public.astronomical_object.astronomical_object_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    description character varying(60) NOT NULL,
    age_in_millions_of_years numeric(20,5),
    galaxy_type_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(60) NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(20,5),
    mass_kg numeric(30,5),
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
    has_life boolean,
    age_in_millions_of_years numeric(10,5),
    distance_from_earth_km numeric(20,5),
    cant_moons integer,
    mass_kg numeric(40,5),
    radio_km numeric(20,5),
    planet_type_id integer,
    number_artificial_satelites integer,
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(60) NOT NULL
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: space_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mission (
    space_mission_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(60) NOT NULL
);


ALTER TABLE public.space_mission OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_mission_space_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_mission_space_mission_id_seq OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_mission_space_mission_id_seq OWNED BY public.space_mission.space_mission_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(20,5),
    mass_kg numeric(50,10),
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
-- Name: astronomical_object astronomical_object_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_object ALTER COLUMN astronomical_object_id SET DEFAULT nextval('public.astronomical_object_astronomical_object_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: space_mission space_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission ALTER COLUMN space_mission_id SET DEFAULT nextval('public.space_mission_space_mission_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronomical_object; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomical_object VALUES (1, 'Curiosity', NULL, 2, 'Mars explorer Rovers');
INSERT INTO public.astronomical_object VALUES (2, 'Halley comet', 1, NULL, 'Periodic comet visible from Earth');
INSERT INTO public.astronomical_object VALUES (3, 'Crab nebula', NULL, NULL, 'A supernova nebula in the constellation Taurus');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', false, 'Home galaxy of Earth', 13000.00000, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, 'Closest galaxy to the Milky Way', 10000.00000, 1);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', false, 'Irregular dwarf galaxy', 1100.00000, 3);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', false, 'Elliptical galaxy with radio emission', 10000.00000, 2);
INSERT INTO public.galaxy VALUES (5, 'Canis Major Dwarf', false, 'Irregular dwarf galaxy', 12000.00000, 3);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', true, 'Barred spiral galaxy', 13000.00000, 1);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'Galaxies with arms that spiral outwards');
INSERT INTO public.galaxy_type VALUES (2, 'Eliptical', 'Galaxies shaped like a flateened ball');
INSERT INTO public.galaxy_type VALUES (3, 'Irregular', 'Galaxies with no defined shape');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 4500.00000, 73420000000000000000000.00000, 1);
INSERT INTO public.moon VALUES (2, 'Io', true, 4600.00000, 89400000000000000000000.00000, 2);
INSERT INTO public.moon VALUES (3, 'Triton', true, 4500.00000, 21400000000000000000000.00000, 3);
INSERT INTO public.moon VALUES (22, 'Europe', true, 4589.00000, 48000000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (23, 'Ganymade', true, 4589.00000, 148000000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (24, 'Callisto', true, 4589.00000, 108000000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (25, 'Mimas', true, 4530.00000, 37500000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (26, 'Enceladus', true, 314.00000, 108000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (27, 'Tethys', true, 1091.00000, 617000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (28, 'Dione', true, 1123.00000, 1100000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (29, 'Rhea', true, 1262.00000, 2310000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (30, 'Titan', true, 4546.00000, 165000000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (31, 'Hyperion', false, 4550.00000, 5620000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (32, 'Ispetus', true, 4567.00000, 1810000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (33, 'Phobos', false, 4000.00000, 10800000000000000.00000, NULL);
INSERT INTO public.moon VALUES (34, 'Deimos', false, 4000.00000, 2400000000000000.00000, NULL);
INSERT INTO public.moon VALUES (35, 'Charon', true, 4527.00000, 1520000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (36, 'Nereid', false, 5100.00000, 31000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (37, 'Larissa', true, 5130.00000, 42000000000000000000.00000, NULL);
INSERT INTO public.moon VALUES (38, 'Proteus', true, 4576.00000, 53000000000000000000.00000, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 4500.00000, 149600000.00000, 1, 5970000000000000000000000.00000, 6371.00000, 1, NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', false, 4600.00000, 778300000.00000, 79, 1898000000000000000000000000.00000, 69911.00000, 2, NULL, false, 2);
INSERT INTO public.planet VALUES (3, 'Neptune', false, 4500.00000, 4500000000.00000, 14, 102000000000000000000000000.00000, 24622.00000, 3, NULL, false, 2);
INSERT INTO public.planet VALUES (4, 'Mercury', false, 4500.00000, 91895531.00000, 0, 330000000000000000000000.00000, 2439.70000, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (5, 'Venus', false, 4500.00000, 41400000.00000, 0, 4870000000000000000000000.00000, 6051.80000, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (6, 'Mars', false, 4500.00000, 78340000.00000, 2, 639000000000000000000000.00000, 3389.50000, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (7, 'Ceres', false, 4500.00000, 414000000.00000, 0, 940000000000000000000.00000, 473.00000, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (8, 'Saturn', false, 4500.00000, 1273500000.00000, 82, 568000000000000000000000000.00000, 58232.00000, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (9, 'Uranus', false, 4500.00000, 2723950000.00000, 27, 86800000000000000000000000.00000, 25362.00000, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', false, 4500.00000, 5906376276.00000, 5, 13100000000000000000000.00000, 1188.30000, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', false, 4500.00000, 51400000000.00000, 2, 4006000000000000000000.00000, 816.00000, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (12, 'Eris', false, 4500.00000, 96400000000.00000, 1, 16700000000000000000000.00000, 1163.00000, NULL, NULL, true, 1);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'Rocky planets similar to Earth');
INSERT INTO public.planet_type VALUES (2, 'Gas giant', 'Large planets mostly made of gas');
INSERT INTO public.planet_type VALUES (3, 'Ice giant', 'Planets with thick icy atmospheres');


--
-- Data for Name: space_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mission VALUES (1, 'Apollo 11', 'Landing on the Moon');
INSERT INTO public.space_mission VALUES (2, 'Mars 2020', 'Exploring Mars');
INSERT INTO public.space_mission VALUES (3, 'Voyager 1', 'Interstellar exploration');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpha Centauri A', true, 6000.00000, 1100000000000000000000000000000.0000000000, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', true, 5000.00000, 120000000000000000000000000000.0000000000, 1);
INSERT INTO public.star VALUES (1, 'Sun', true, 4600.00000, 1989000000000000000000000000000.0000000000, 1);
INSERT INTO public.star VALUES (4, 'Sirius', true, 250.00000, 2063200000000000000000000000000.0000000000, 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', false, 8.50000, 14000000000000000000000000000000.0000000000, 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri B', true, 6000.00000, 1660000000000000000000000000000.0000000000, 1);


--
-- Name: astronomical_object_astronomical_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomical_object_astronomical_object_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 38, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 3, true);


--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mission_space_mission_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomical_object astronomical_object_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_object
    ADD CONSTRAINT astronomical_object_name_key UNIQUE (name);


--
-- Name: astronomical_object astronomical_object_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_object
    ADD CONSTRAINT astronomical_object_pkey PRIMARY KEY (astronomical_object_id);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: space_mission space_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_name_key UNIQUE (name);


--
-- Name: space_mission space_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_pkey PRIMARY KEY (space_mission_id);


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
-- Name: astronomical_object astronomical_object_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_object
    ADD CONSTRAINT astronomical_object_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: astronomical_object astronomical_object_space_mission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_object
    ADD CONSTRAINT astronomical_object_space_mission_id_fkey FOREIGN KEY (space_mission_id) REFERENCES public.space_mission(space_mission_id);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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

