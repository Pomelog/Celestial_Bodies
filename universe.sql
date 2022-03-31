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
-- Name: empires; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.empires (
    name character varying(30),
    type character varying(30) NOT NULL,
    ships integer NOT NULL,
    race integer NOT NULL,
    empires_id integer NOT NULL
);


ALTER TABLE public.empires OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    age_in_billion_years integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(30) NOT NULL,
    planet_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    craters_num integer NOT NULL,
    population boolean NOT NULL,
    population_in_mill integer NOT NULL,
    no_aliens integer NOT NULL,
    no_bases integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(30) NOT NULL,
    name character varying(30),
    is_spherical boolean NOT NULL,
    population numeric NOT NULL,
    orbits integer NOT NULL,
    star_id character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_in_kpc integer NOT NULL,
    galaxy_id character varying(30) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: empires; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.empires VALUES ('Imperium of Man', 'Fascist', 123, 3, 23);
INSERT INTO public.empires VALUES ('Necrons', 'Egyptians', 4565, 22, 1);
INSERT INTO public.empires VALUES ('Tau', 'Communist', 2345, 89, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('G1', 'Andromeda', 'Spiral', 782, 10);
INSERT INTO public.galaxy VALUES ('G2', 'Fenix', 'Polar', 987, 12);
INSERT INTO public.galaxy VALUES ('G3', 'Pegasus', 'Spiral', 767, 12);
INSERT INTO public.galaxy VALUES ('G4', 'Taurus', 'Quasar', 654, 13);
INSERT INTO public.galaxy VALUES ('G5', 'Ursa', 'Polar', 765, 14);
INSERT INTO public.galaxy VALUES ('G6', 'Muon', 'Spiral', 785, 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('M1', 'P1', 'yuyu', 3, true, 3, 2, 3);
INSERT INTO public.moon VALUES ('M2', 'P3', 'yayu', 2, false, 53, 21, 3);
INSERT INTO public.moon VALUES ('M3', 'P2', 'hoho', 3, true, 3, 0, 2);
INSERT INTO public.moon VALUES ('M4', 'P2', 'tero', 2, false, 9, 3, 9);
INSERT INTO public.moon VALUES ('M5', 'P6', 'koko', 2, true, 5, 8, 7);
INSERT INTO public.moon VALUES ('M6', 'P7', 'yiyu', 2, false, 53, 21, 3);
INSERT INTO public.moon VALUES ('M7', 'P11', 'hojo', 3, true, 3, 0, 2);
INSERT INTO public.moon VALUES ('M8', 'P12', 'tera', 2, false, 9, 3, 9);
INSERT INTO public.moon VALUES ('M9', 'P6', 'qwerty', 2, true, 5, 8, 7);
INSERT INTO public.moon VALUES ('M10', 'P10', 'Nuni', 5, true, 45, 6, 1);
INSERT INTO public.moon VALUES ('M11', 'P4', 'dodo', 1, true, 2, 2, 5);
INSERT INTO public.moon VALUES ('M12', 'P7', 'fofo', 3, false, 2, 8, 9);
INSERT INTO public.moon VALUES ('M13', 'P2', 'bobi', 3, false, 6, 8, 9);
INSERT INTO public.moon VALUES ('M14', 'P1', 'Adfa', 5, true, 34, 6, 67);
INSERT INTO public.moon VALUES ('M15', 'P7', 'syiyu', 2, false, 53, 21, 3);
INSERT INTO public.moon VALUES ('M16', 'P11', 'hdojo', 3, true, 3, 0, 2);
INSERT INTO public.moon VALUES ('M17', 'P12', 'terra', 2, false, 9, 3, 9);
INSERT INTO public.moon VALUES ('M18', 'P6', 'qwertfy', 2, true, 5, 8, 7);
INSERT INTO public.moon VALUES ('M19', 'P10', 'Nusni', 5, true, 45, 6, 1);
INSERT INTO public.moon VALUES ('M20', 'P4', 'dkjodo', 1, true, 2, 2, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('P1', 'Toui', true, 12, 2, 'S1');
INSERT INTO public.planet VALUES ('P2', 'reToui', false, 2, 22, 'S2');
INSERT INTO public.planet VALUES ('P3', 'Rere', true, 52, 62, 'S3');
INSERT INTO public.planet VALUES ('P4', 'Gugu', false, 2, 12, 'S4');
INSERT INTO public.planet VALUES ('P5', 'Nono', true, 12, 2, 'S1');
INSERT INTO public.planet VALUES ('P6', 'Sisi', true, 12, 2, 'S2');
INSERT INTO public.planet VALUES ('P7', 'Fufu', false, 65, 3, 'S1');
INSERT INTO public.planet VALUES ('P8', 'Nene', true, 2, 4, 'S2');
INSERT INTO public.planet VALUES ('P9', 'Juju', true, 22, 5, 'S3');
INSERT INTO public.planet VALUES ('P10', 'Fafu', true, 5, 7, 'S1');
INSERT INTO public.planet VALUES ('P11', 'Nino', false, 12, 4, 'S5');
INSERT INTO public.planet VALUES ('P12', 'Huhu', false, 45, 3, 'S4');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('S1', 'Verga', 'Gorda', true, 456, 34, 'G1');
INSERT INTO public.star VALUES ('S2', 'Chota', 'Venosa', false, 534, 12, 'G2');
INSERT INTO public.star VALUES ('S3', 'Pija', 'Troncosa', true, 345, 12, 'G3');
INSERT INTO public.star VALUES ('S4', 'Poronga', 'Larga', true, 342, 12, 'G4');
INSERT INTO public.star VALUES ('S5', 'Pedazo', 'Gordo', false, 789, 34, 'G5');
INSERT INTO public.star VALUES ('S6', 'Garompa', 'Negra', true, 324, 23, 'G6');


--
-- Name: empires empires_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empires
    ADD CONSTRAINT empires_name_key UNIQUE (name);


--
-- Name: empires empires_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empires
    ADD CONSTRAINT empires_pkey PRIMARY KEY (empires_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_gal_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_gal_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_plan; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_plan FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

