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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (12, 10, 45);
INSERT INTO public.games VALUES (13, 86, 46);
INSERT INTO public.games VALUES (14, 571, 46);
INSERT INTO public.games VALUES (15, 879, 47);
INSERT INTO public.games VALUES (16, 410, 47);
INSERT INTO public.games VALUES (17, 7, 46);
INSERT INTO public.games VALUES (18, 64, 46);
INSERT INTO public.games VALUES (19, 581, 46);
INSERT INTO public.games VALUES (20, 10, 45);
INSERT INTO public.games VALUES (21, 204, 48);
INSERT INTO public.games VALUES (22, 561, 48);
INSERT INTO public.games VALUES (23, 812, 49);
INSERT INTO public.games VALUES (24, 965, 49);
INSERT INTO public.games VALUES (25, 216, 48);
INSERT INTO public.games VALUES (26, 581, 48);
INSERT INTO public.games VALUES (27, 190, 48);
INSERT INTO public.games VALUES (28, 587, 50);
INSERT INTO public.games VALUES (29, 622, 50);
INSERT INTO public.games VALUES (30, 922, 51);
INSERT INTO public.games VALUES (31, 301, 51);
INSERT INTO public.games VALUES (32, 463, 50);
INSERT INTO public.games VALUES (33, 953, 50);
INSERT INTO public.games VALUES (34, 429, 50);
INSERT INTO public.games VALUES (35, 359, 52);
INSERT INTO public.games VALUES (36, 580, 52);
INSERT INTO public.games VALUES (37, 626, 53);
INSERT INTO public.games VALUES (38, 863, 53);
INSERT INTO public.games VALUES (39, 565, 52);
INSERT INTO public.games VALUES (40, 6, 52);
INSERT INTO public.games VALUES (41, 237, 52);
INSERT INTO public.games VALUES (42, 701, 54);
INSERT INTO public.games VALUES (43, 231, 54);
INSERT INTO public.games VALUES (44, 178, 55);
INSERT INTO public.games VALUES (45, 798, 55);
INSERT INTO public.games VALUES (46, 544, 54);
INSERT INTO public.games VALUES (47, 32, 54);
INSERT INTO public.games VALUES (48, 880, 54);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (45, 'mikela');
INSERT INTO public.users VALUES (46, 'user_1674137091490');
INSERT INTO public.users VALUES (47, 'user_1674137091489');
INSERT INTO public.users VALUES (48, 'user_1674137210269');
INSERT INTO public.users VALUES (49, 'user_1674137210268');
INSERT INTO public.users VALUES (50, 'user_1674137263392');
INSERT INTO public.users VALUES (51, 'user_1674137263391');
INSERT INTO public.users VALUES (52, 'user_1674137303795');
INSERT INTO public.users VALUES (53, 'user_1674137303794');
INSERT INTO public.users VALUES (54, 'user_1674137372234');
INSERT INTO public.users VALUES (55, 'user_1674137372233');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 48, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 55, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
