--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    description text
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
    description text,
    age_in_billions_of_years numeric,
    galaxy_type character varying(30)
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
    description text,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    nr_of_moons integer,
    planet_type character varying(40),
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
    description text,
    distance_from_earth_in_light_years numeric,
    constellation_id integer,
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

INSERT INTO public.constellation VALUES (1, 'Andromeda', 'Located in the northern celestial hemisphere, it is named for Andromeda, daughter of Cassiopeia, in the Greek myth');
INSERT INTO public.constellation VALUES (2, 'Canis Major', 'its name is Latin for "greater dog" in contrast to Canis Minor, the "lesser dog"');
INSERT INTO public.constellation VALUES (3, 'Scutum', 'Scutum is a small constellation. Its name is Latin for shield');
INSERT INTO public.constellation VALUES (4, 'Sagittarius', 'Sagittarius is commonly represented as a centaur drawing a bow');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'the galaxy that includes the Solar System', 13.61, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'the nearest major galaxy to Milky Way', 10.01, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Bear Paw', 'a blue compact dwarf galaxy', NULL, 'dwarf');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'also called Sleeping Beauty or Evil Eye Galaxy', 13.28, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Cigar', 'forms stars 10 times faster than Milky Way', 13.3, 'starburst');
INSERT INTO public.galaxy VALUES (6, 'Comet', 'found with Hubble Space Telescope', 1, 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'the brightest celestial object in Earth s night sky', true, 3);
INSERT INTO public.moon VALUES (2, 'Ganymede', ' the largest and most massive natural satellite of Jupiter', true, 5);
INSERT INTO public.moon VALUES (3, 'Europa', ' the smallest of the four Galilean moons orbiting Jupiter', true, 5);
INSERT INTO public.moon VALUES (4, 'Enceladus', 'orbits Saturn at a distance of 148,000 miles', true, 6);
INSERT INTO public.moon VALUES (5, 'Thebe', 'the fourth of Jupiter moons by distance from the planet', false, 5);
INSERT INTO public.moon VALUES (6, 'Themisto', 'is a small prograde irregular satellite of Jupiter', false, 5);
INSERT INTO public.moon VALUES (7, 'Titan', ' the largest moon of Saturn and the second-largest in the Solar System', true, 6);
INSERT INTO public.moon VALUES (8, 'Io', 'has the highest density of any moon', true, 5);
INSERT INTO public.moon VALUES (9, 'Skoll', 'is about 5 kilometres in diameter', false, 6);
INSERT INTO public.moon VALUES (10, 'Phobos', 'the innermost and larger of the two natural satellites of Mars', false, 4);
INSERT INTO public.moon VALUES (11, 'Deimos', 'is the smaller and outer of the two natural satellites of Mars', false, 4);
INSERT INTO public.moon VALUES (12, 'Ariel', 'the fourth-largest moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'the third-largest moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', 'the outermost and second-largest major moon of the planet Uranus', true, 7);
INSERT INTO public.moon VALUES (15, 'Proteus', 'the second-largest Neptunian moon', false, 8);
INSERT INTO public.moon VALUES (16, 'Triton', 'the largest of Neptune 14 known moons', true, 8);
INSERT INTO public.moon VALUES (17, 'Despina', 'the third-closest inner moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (18, 'Galatea', 'he fourth-closest inner moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (19, 'Pandora', 'a potato-shaped moon, is coated in a fine (dust-sized) icy material', false, 6);
INSERT INTO public.moon VALUES (20, 'Janus', 'an inner satellite of Saturn', false, 6);
INSERT INTO public.moon VALUES (21, 'Mimas', 'the seventh-largest natural satellite of Saturn', true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'first and smallest planet from the Sun in the Solar System', false, NULL, 'terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'has the densest atmosphere of the terrestrial planets', false, NULL, 'terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'only astronomical object known to harbor life', true, 1, 'terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'is orange-red because it is covered in iron(III) oxide dust', false, 2, 'terrestrial', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'largest planet in the Solar System', false, 95, 'gas-giant', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'has a system of rings', false, 146, 'gas-giant', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'gaseous cyan-coloured ice-giant', false, 28, 'ice-giant', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'the densest giant planet', false, 16, 'ice-giant', 1);
INSERT INTO public.planet VALUES (9, 'Kepler 11-f', 'Neptune-like exoplanet', false, NULL, 'Neptune-like', 1);
INSERT INTO public.planet VALUES (10, 'Kepler 69c', 'super-Earth extrasolar planet, likely rocky', false, NULL, 'super-Earth exoplanet', 1);
INSERT INTO public.planet VALUES (11, '51 Pegasi b', 'an extrasolar planet', false, NULL, 'gas-giant exoplanet', 1);
INSERT INTO public.planet VALUES (12, 'Gliese 581c', 'an exoplanet orbiting Gliese 581 system', false, NULL, 'Neptune-like', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'the star at the center of the Solar System', 0.000015, NULL, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 'a spectroscopic binary star', 96.87, 1, 2);
INSERT INTO public.star VALUES (3, 'VY Canis Majoris', 'one of the most luminous red supergiants', 3900, 2, 1);
INSERT INTO public.star VALUES (4, 'Stephenson 2-18', 'a possible extreme red hypergiant', 19570, 3, 1);
INSERT INTO public.star VALUES (5, 'GCirs 7', 'a red supergiant located in the Galactic Center', 26000, 4, 1);
INSERT INTO public.star VALUES (6, 'Almach', 'also known as Gamma Andromedae', 355.5, 1, 2);
INSERT INTO public.star VALUES (7, 'Mirach', 'also known as Beta Andromedae', 199, 1, 2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

