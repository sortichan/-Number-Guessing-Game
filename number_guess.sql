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
    user_id integer,
    guesses integer NOT NULL,
    secret_number integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 801, 800);
INSERT INTO public.games VALUES (2, 1, 133, 132);
INSERT INTO public.games VALUES (3, 2, 831, 830);
INSERT INTO public.games VALUES (4, 2, 358, 357);
INSERT INTO public.games VALUES (5, 1, 85, 82);
INSERT INTO public.games VALUES (6, 1, 390, 389);
INSERT INTO public.games VALUES (7, 1, 206, 205);
INSERT INTO public.games VALUES (8, 3, 205, 204);
INSERT INTO public.games VALUES (9, 3, 409, 408);
INSERT INTO public.games VALUES (10, 4, 179, 178);
INSERT INTO public.games VALUES (11, 4, 950, 949);
INSERT INTO public.games VALUES (12, 3, 708, 705);
INSERT INTO public.games VALUES (13, 3, 691, 690);
INSERT INTO public.games VALUES (14, 3, 502, 501);
INSERT INTO public.games VALUES (15, 5, 913, 912);
INSERT INTO public.games VALUES (16, 5, 968, 967);
INSERT INTO public.games VALUES (17, 6, 319, 318);
INSERT INTO public.games VALUES (18, 6, 667, 666);
INSERT INTO public.games VALUES (19, 5, 194, 191);
INSERT INTO public.games VALUES (20, 5, 601, 600);
INSERT INTO public.games VALUES (21, 5, 790, 789);
INSERT INTO public.games VALUES (22, 7, 138, 137);
INSERT INTO public.games VALUES (23, 7, 876, 875);
INSERT INTO public.games VALUES (24, 8, 9, 8);
INSERT INTO public.games VALUES (25, 8, 753, 752);
INSERT INTO public.games VALUES (26, 7, 613, 610);
INSERT INTO public.games VALUES (27, 7, 795, 794);
INSERT INTO public.games VALUES (28, 7, 10, 9);
INSERT INTO public.games VALUES (29, 9, 16, 757);
INSERT INTO public.games VALUES (30, 10, 710, 709);
INSERT INTO public.games VALUES (31, 10, 22, 21);
INSERT INTO public.games VALUES (32, 11, 992, 991);
INSERT INTO public.games VALUES (33, 11, 40, 39);
INSERT INTO public.games VALUES (34, 10, 228, 225);
INSERT INTO public.games VALUES (35, 10, 5, 4);
INSERT INTO public.games VALUES (36, 10, 859, 858);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1733184071749');
INSERT INTO public.users VALUES (2, 'user_1733184071748');
INSERT INTO public.users VALUES (3, 'user_1733184655105');
INSERT INTO public.users VALUES (4, 'user_1733184655104');
INSERT INTO public.users VALUES (5, 'user_1733184688769');
INSERT INTO public.users VALUES (6, 'user_1733184688768');
INSERT INTO public.users VALUES (7, 'user_1733184730132');
INSERT INTO public.users VALUES (8, 'user_1733184730131');
INSERT INTO public.users VALUES (9, 'owo');
INSERT INTO public.users VALUES (10, 'user_1733184800596');
INSERT INTO public.users VALUES (11, 'user_1733184800595');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);


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

