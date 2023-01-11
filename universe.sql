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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    size_in_km numeric,
    favorite_galaxy boolean,
    friendly boolean
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
    planet_id integer NOT NULL,
    has_life boolean,
    name character varying(30),
    size_in_km integer,
    distance_nearest_planet_km integer
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
    distance_from_earth numeric NOT NULL,
    star_id integer,
    favorite_thing_about_it character varying(50),
    name character varying(30),
    size_in_km integer,
    biggest_volcano integer
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
-- Name: potato_salad; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.potato_salad (
    potato_salad_id integer NOT NULL,
    name character varying(30),
    taste character varying(30) NOT NULL,
    star_id integer
);


ALTER TABLE public.potato_salad OWNER TO freecodecamp;

--
-- Name: potato_salad_potato_salad_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.potato_salad_potato_salad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.potato_salad_potato_salad_id_seq OWNER TO freecodecamp;

--
-- Name: potato_salad_potato_salad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.potato_salad_potato_salad_id_seq OWNED BY public.potato_salad.potato_salad_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    massive boolean,
    friendly boolean,
    galaxy_id integer NOT NULL,
    description text,
    size_in_km integer,
    biggest_mountain integer
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
-- Name: potato_salad potato_salad_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.potato_salad ALTER COLUMN potato_salad_id SET DEFAULT nextval('public.potato_salad_potato_salad_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy 1', 1, 'description', 1000, true, true);
INSERT INTO public.galaxy VALUES ('galaxy man', 2, 'galaxy description', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy woman', 3, 'galaxy des', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy nope', 4, 'no desc', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('super galaxy', 5, 'galaxy description', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('mini galaxy', 6, 'mini galaaxxxyyyy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('micro galaxy', 7, 'the micro galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('lalala', 8, 'weeeelaaaa', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('wee op', 9, ' da wooop woop', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('reeee', 10, 'reeee eeee', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('rrrrr', 11, 'reeeeeeerrr', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('rrrrrrrrrrrrr', 12, 'rrrrrrrrrrrrrrrrr', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('weegggg', 13, 'fdfdjfdjfdl', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('ffgdjjj', 14, 'kkkdksds', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('cccccc', 15, 'cccccccccccdjfdfd', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('ksmmmmd', 16, 'lllllll', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('kkkkkkkkkk', 17, 'kknfdndffd', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('mxmcmcmx', 18, 'kgkgg', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('mnbnnn', 19, 'ffdfdfd', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('zcxczxcxz', 20, 'zxcczxzxccxzc', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 7, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 8, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 9, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 11, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 14, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 15, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 16, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 17, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 18, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 19, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 20, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1000, 1, 'yellow', 'fred', 10, 100);
INSERT INTO public.planet VALUES (2, 1000, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 1111, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 2222, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 1, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 1, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 1, 7, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 1, 8, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 2, 9, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 1, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 2, 11, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 9, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 111, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 111, 14, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 111, 15, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 111, 16, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 111, 17, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 111, 18, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 1111, 19, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 111, 20, NULL, NULL, NULL, NULL);


--
-- Data for Name: potato_salad; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.potato_salad VALUES (1, 'green', 'good', NULL);
INSERT INTO public.potato_salad VALUES (2, 'blue', 'good', NULL);
INSERT INTO public.potato_salad VALUES (3, 'red', 'good', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'stary', true, true, 1, 'description', 1, 1);
INSERT INTO public.star VALUES (2, 'starman', NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'starwoman', NULL, NULL, 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'starrrr', NULL, NULL, 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'the star name', NULL, NULL, 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'stay see', NULL, NULL, 6, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'I need you', NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'weeeeeggggddffd', NULL, NULL, 8, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'ffdfdhhh', NULL, NULL, 9, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'ffhhfsssdsss', NULL, NULL, 10, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'nbnbnbnb', NULL, NULL, 11, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'mzxnbcv', NULL, NULL, 12, NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 'fdfffdbgg', NULL, NULL, 13, NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 'vvvbbb', NULL, NULL, 14, NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, 'ccxxx', NULL, NULL, 15, NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, 'mxcmxcmx', NULL, NULL, 16, NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, 'nxmcmxcmcx', NULL, NULL, 17, NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, 'dddddgg', NULL, NULL, 18, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 'dznsnnss', NULL, NULL, 19, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 'dsjsdjds', NULL, NULL, 20, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 7, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 3, true);


--
-- Name: potato_salad_potato_salad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.potato_salad_potato_salad_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


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
-- Name: planet planet_favorite_thing_about_it_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_favorite_thing_about_it_key UNIQUE (favorite_thing_about_it);


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
-- Name: potato_salad potato_salad_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.potato_salad
    ADD CONSTRAINT potato_salad_name_key UNIQUE (name);


--
-- Name: potato_salad potato_salad_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.potato_salad
    ADD CONSTRAINT potato_salad_pkey PRIMARY KEY (potato_salad_id);


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
-- Name: potato_salad potato_salad_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.potato_salad
    ADD CONSTRAINT potato_salad_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

