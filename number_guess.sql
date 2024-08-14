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
    number_guesses integer NOT NULL,
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 13, 3);
INSERT INTO public.games VALUES (2, 726, 4);
INSERT INTO public.games VALUES (3, 218, 4);
INSERT INTO public.games VALUES (4, 824, 6);
INSERT INTO public.games VALUES (5, 666, 6);
INSERT INTO public.games VALUES (6, 334, 4);
INSERT INTO public.games VALUES (7, 495, 4);
INSERT INTO public.games VALUES (8, 335, 4);
INSERT INTO public.games VALUES (9, 20, 3);
INSERT INTO public.games VALUES (10, 644, 11);
INSERT INTO public.games VALUES (11, 266, 11);
INSERT INTO public.games VALUES (12, 515, 12);
INSERT INTO public.games VALUES (13, 588, 12);
INSERT INTO public.games VALUES (14, 210, 11);
INSERT INTO public.games VALUES (15, 690, 11);
INSERT INTO public.games VALUES (16, 771, 11);
INSERT INTO public.games VALUES (17, 505, 13);
INSERT INTO public.games VALUES (18, 955, 13);
INSERT INTO public.games VALUES (19, 957, 14);
INSERT INTO public.games VALUES (20, 680, 14);
INSERT INTO public.games VALUES (21, 394, 13);
INSERT INTO public.games VALUES (22, 618, 13);
INSERT INTO public.games VALUES (23, 148, 13);
INSERT INTO public.games VALUES (24, 16, 3);
INSERT INTO public.games VALUES (25, 277, 15);
INSERT INTO public.games VALUES (26, 576, 15);
INSERT INTO public.games VALUES (27, 545, 16);
INSERT INTO public.games VALUES (28, 705, 16);
INSERT INTO public.games VALUES (29, 473, 15);
INSERT INTO public.games VALUES (30, 117, 15);
INSERT INTO public.games VALUES (31, 206, 15);
INSERT INTO public.games VALUES (32, 696, 17);
INSERT INTO public.games VALUES (33, 335, 17);
INSERT INTO public.games VALUES (34, 431, 18);
INSERT INTO public.games VALUES (35, 975, 18);
INSERT INTO public.games VALUES (36, 875, 17);
INSERT INTO public.games VALUES (37, 374, 17);
INSERT INTO public.games VALUES (38, 930, 17);
INSERT INTO public.games VALUES (39, 731, 19);
INSERT INTO public.games VALUES (40, 425, 19);
INSERT INTO public.games VALUES (41, 374, 20);
INSERT INTO public.games VALUES (42, 979, 20);
INSERT INTO public.games VALUES (43, 904, 19);
INSERT INTO public.games VALUES (44, 508, 19);
INSERT INTO public.games VALUES (45, 404, 19);
INSERT INTO public.games VALUES (46, 409, 21);
INSERT INTO public.games VALUES (47, 89, 21);
INSERT INTO public.games VALUES (48, 184, 22);
INSERT INTO public.games VALUES (49, 323, 22);
INSERT INTO public.games VALUES (50, 774, 21);
INSERT INTO public.games VALUES (51, 683, 21);
INSERT INTO public.games VALUES (52, 886, 21);
INSERT INTO public.games VALUES (53, 112, 23);
INSERT INTO public.games VALUES (54, 306, 23);
INSERT INTO public.games VALUES (55, 352, 24);
INSERT INTO public.games VALUES (56, 356, 24);
INSERT INTO public.games VALUES (57, 959, 23);
INSERT INTO public.games VALUES (58, 117, 23);
INSERT INTO public.games VALUES (59, 289, 23);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'akki');
INSERT INTO public.users VALUES (2, 'veda');
INSERT INTO public.users VALUES (3, 'vedi');
INSERT INTO public.users VALUES (4, 'user_1723612609365');
INSERT INTO public.users VALUES (6, 'user_1723612609364');
INSERT INTO public.users VALUES (11, 'user_1723613025055');
INSERT INTO public.users VALUES (12, 'user_1723613025054');
INSERT INTO public.users VALUES (13, 'user_1723613443066');
INSERT INTO public.users VALUES (14, 'user_1723613443065');
INSERT INTO public.users VALUES (15, 'user_1723614180181');
INSERT INTO public.users VALUES (16, 'user_1723614180180');
INSERT INTO public.users VALUES (17, 'user_1723614388806');
INSERT INTO public.users VALUES (18, 'user_1723614388805');
INSERT INTO public.users VALUES (19, 'user_1723614474069');
INSERT INTO public.users VALUES (20, 'user_1723614474068');
INSERT INTO public.users VALUES (21, 'user_1723614537458');
INSERT INTO public.users VALUES (22, 'user_1723614537457');
INSERT INTO public.users VALUES (23, 'user_1723614575250');
INSERT INTO public.users VALUES (24, 'user_1723614575249');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 59, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


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

