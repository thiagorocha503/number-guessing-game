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
    user_id integer NOT NULL,
    guesses integer NOT NULL,
    date_played date DEFAULT now() NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 2, '2023-06-24');
INSERT INTO public.games VALUES (2, 1, 5, '2023-06-24');
INSERT INTO public.games VALUES (3, 1, 9, '2023-06-24');
INSERT INTO public.games VALUES (4, 22, 233, '2023-06-26');
INSERT INTO public.games VALUES (5, 22, 805, '2023-06-26');
INSERT INTO public.games VALUES (6, 23, 530, '2023-06-26');
INSERT INTO public.games VALUES (7, 23, 508, '2023-06-26');
INSERT INTO public.games VALUES (8, 22, 300, '2023-06-26');
INSERT INTO public.games VALUES (9, 22, 199, '2023-06-26');
INSERT INTO public.games VALUES (10, 22, 744, '2023-06-26');
INSERT INTO public.games VALUES (11, 13, 3, '2023-06-26');
INSERT INTO public.games VALUES (12, 13, 5, '2023-06-26');
INSERT INTO public.games VALUES (13, 13, 4, '2023-06-26');
INSERT INTO public.games VALUES (14, 26, 816, '2023-06-26');
INSERT INTO public.games VALUES (15, 26, 283, '2023-06-26');
INSERT INTO public.games VALUES (16, 27, 76, '2023-06-26');
INSERT INTO public.games VALUES (17, 27, 517, '2023-06-26');
INSERT INTO public.games VALUES (18, 26, 669, '2023-06-26');
INSERT INTO public.games VALUES (19, 26, 254, '2023-06-26');
INSERT INTO public.games VALUES (20, 26, 295, '2023-06-26');
INSERT INTO public.games VALUES (21, 13, 1, '2023-06-26');
INSERT INTO public.games VALUES (22, 28, 814, '2023-06-26');
INSERT INTO public.games VALUES (23, 28, 1001, '2023-06-26');
INSERT INTO public.games VALUES (24, 29, 619, '2023-06-26');
INSERT INTO public.games VALUES (25, 29, 219, '2023-06-26');
INSERT INTO public.games VALUES (26, 28, 114, '2023-06-26');
INSERT INTO public.games VALUES (27, 28, 990, '2023-06-26');
INSERT INTO public.games VALUES (28, 28, 746, '2023-06-26');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Thiago');
INSERT INTO public.users VALUES (2, 'andré');
INSERT INTO public.users VALUES (3, 'user_1687642464777');
INSERT INTO public.users VALUES (4, 'user_1687642464776');
INSERT INTO public.users VALUES (5, 'user_1687643075528');
INSERT INTO public.users VALUES (6, 'user_1687643075527');
INSERT INTO public.users VALUES (7, 'user_1687643145265');
INSERT INTO public.users VALUES (8, 'user_1687643145264');
INSERT INTO public.users VALUES (9, 'user_1687643286375');
INSERT INTO public.users VALUES (10, 'user_1687643286374');
INSERT INTO public.users VALUES (11, 'user_1687815270322');
INSERT INTO public.users VALUES (12, 'user_1687815270321');
INSERT INTO public.users VALUES (13, 'thiago');
INSERT INTO public.users VALUES (14, 'user_1687816771767');
INSERT INTO public.users VALUES (15, 'user_1687816771766');
INSERT INTO public.users VALUES (16, 'user_1687817090192');
INSERT INTO public.users VALUES (17, 'user_1687817090191');
INSERT INTO public.users VALUES (18, 'user_1687817309740');
INSERT INTO public.users VALUES (19, 'user_1687817309739');
INSERT INTO public.users VALUES (20, 'user_1687817916128');
INSERT INTO public.users VALUES (21, 'user_1687817916127');
INSERT INTO public.users VALUES (22, 'user_1687817978359');
INSERT INTO public.users VALUES (23, 'user_1687817978358');
INSERT INTO public.users VALUES (24, 'user_1687818233937');
INSERT INTO public.users VALUES (25, 'user_1687818233936');
INSERT INTO public.users VALUES (26, 'user_1687818252115');
INSERT INTO public.users VALUES (27, 'user_1687818252114');
INSERT INTO public.users VALUES (28, 'user_1687818305675');
INSERT INTO public.users VALUES (29, 'user_1687818305674');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 29, true);


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
-- Name: games fk_games_user; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_user FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

