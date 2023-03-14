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

DROP DATABASE number_quess;
--
-- Name: number_quess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_quess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_quess OWNER TO freecodecamp;

\connect number_quess

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
    counter integer
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
    name character(22)
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

INSERT INTO public.games VALUES (1, 80, 10);
INSERT INTO public.games VALUES (4, 87, 910);
INSERT INTO public.games VALUES (5, 88, 245);
INSERT INTO public.games VALUES (6, 87, 816);
INSERT INTO public.games VALUES (7, 87, 725);
INSERT INTO public.games VALUES (8, 87, 89);
INSERT INTO public.games VALUES (12, 89, 880);
INSERT INTO public.games VALUES (13, 90, 126);
INSERT INTO public.games VALUES (14, 89, 962);
INSERT INTO public.games VALUES (15, 89, 981);
INSERT INTO public.games VALUES (16, 89, 92);
INSERT INTO public.games VALUES (2, 80, 10);
INSERT INTO public.games VALUES (3, 80, 10);
INSERT INTO public.games VALUES (9, 80, 10);
INSERT INTO public.games VALUES (10, 80, 10);
INSERT INTO public.games VALUES (11, 80, 10);
INSERT INTO public.games VALUES (17, 80, 10);
INSERT INTO public.games VALUES (18, 92, 324);
INSERT INTO public.games VALUES (19, 93, 913);
INSERT INTO public.games VALUES (20, 92, 830);
INSERT INTO public.games VALUES (21, 92, 65);
INSERT INTO public.games VALUES (22, 92, 708);
INSERT INTO public.games VALUES (23, 80, 10);
INSERT INTO public.games VALUES (24, 95, 377);
INSERT INTO public.games VALUES (25, 95, 495);
INSERT INTO public.games VALUES (26, 96, 908);
INSERT INTO public.games VALUES (27, 96, 189);
INSERT INTO public.games VALUES (28, 95, 767);
INSERT INTO public.games VALUES (29, 95, 261);
INSERT INTO public.games VALUES (30, 95, 444);
INSERT INTO public.games VALUES (31, 97, NULL);
INSERT INTO public.games VALUES (32, 98, NULL);
INSERT INTO public.games VALUES (33, 99, 650);
INSERT INTO public.games VALUES (34, 99, 720);
INSERT INTO public.games VALUES (35, 100, 985);
INSERT INTO public.games VALUES (36, 100, 635);
INSERT INTO public.games VALUES (37, 99, 877);
INSERT INTO public.games VALUES (38, 99, 207);
INSERT INTO public.games VALUES (39, 99, 719);
INSERT INTO public.games VALUES (40, 101, 4);
INSERT INTO public.games VALUES (41, 102, 198);
INSERT INTO public.games VALUES (42, 102, 259);
INSERT INTO public.games VALUES (43, 103, 767);
INSERT INTO public.games VALUES (44, 103, 779);
INSERT INTO public.games VALUES (45, 102, 316);
INSERT INTO public.games VALUES (46, 102, 488);
INSERT INTO public.games VALUES (47, 102, 189);
INSERT INTO public.games VALUES (48, 80, NULL);
INSERT INTO public.games VALUES (49, 80, NULL);
INSERT INTO public.games VALUES (50, 104, 71);
INSERT INTO public.games VALUES (51, 104, 493);
INSERT INTO public.games VALUES (52, 105, 942);
INSERT INTO public.games VALUES (53, 105, 377);
INSERT INTO public.games VALUES (54, 104, 304);
INSERT INTO public.games VALUES (55, 104, 56);
INSERT INTO public.games VALUES (56, 104, 976);
INSERT INTO public.games VALUES (57, 80, NULL);
INSERT INTO public.games VALUES (58, 80, NULL);
INSERT INTO public.games VALUES (59, 106, 822);
INSERT INTO public.games VALUES (60, 106, 925);
INSERT INTO public.games VALUES (61, 107, 823);
INSERT INTO public.games VALUES (62, 107, 541);
INSERT INTO public.games VALUES (63, 106, 880);
INSERT INTO public.games VALUES (64, 106, 842);
INSERT INTO public.games VALUES (65, 106, 790);
INSERT INTO public.games VALUES (66, 108, 946);
INSERT INTO public.games VALUES (67, 108, 40);
INSERT INTO public.games VALUES (68, 108, 989);
INSERT INTO public.games VALUES (69, 108, 623);
INSERT INTO public.games VALUES (70, 108, 776);
INSERT INTO public.games VALUES (71, 108, 866);
INSERT INTO public.games VALUES (72, 108, 101);
INSERT INTO public.games VALUES (73, 108, NULL);
INSERT INTO public.games VALUES (74, 108, NULL);
INSERT INTO public.games VALUES (75, 109, 738);
INSERT INTO public.games VALUES (76, 109, 682);
INSERT INTO public.games VALUES (77, 110, 379);
INSERT INTO public.games VALUES (78, 110, 701);
INSERT INTO public.games VALUES (79, 109, 221);
INSERT INTO public.games VALUES (80, 109, 953);
INSERT INTO public.games VALUES (81, 109, 542);
INSERT INTO public.games VALUES (82, 111, 434);
INSERT INTO public.games VALUES (83, 111, 495);
INSERT INTO public.games VALUES (84, 112, 465);
INSERT INTO public.games VALUES (85, 112, 85);
INSERT INTO public.games VALUES (86, 111, 826);
INSERT INTO public.games VALUES (87, 111, 175);
INSERT INTO public.games VALUES (88, 111, 228);
INSERT INTO public.games VALUES (89, 80, NULL);
INSERT INTO public.games VALUES (90, 113, 452);
INSERT INTO public.games VALUES (91, 113, 90);
INSERT INTO public.games VALUES (92, 114, 855);
INSERT INTO public.games VALUES (93, 114, 432);
INSERT INTO public.games VALUES (94, 113, 145);
INSERT INTO public.games VALUES (95, 113, 157);
INSERT INTO public.games VALUES (96, 113, 502);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (82, 'user_1678724828787    ');
INSERT INTO public.users VALUES (81, 'user_1678724828788    ');
INSERT INTO public.users VALUES (84, 'user_1678783648441    ');
INSERT INTO public.users VALUES (83, 'user_1678783648442    ');
INSERT INTO public.users VALUES (85, '500                   ');
INSERT INTO public.users VALUES (86, 'qwerty                ');
INSERT INTO public.users VALUES (88, 'user_1678786206468    ');
INSERT INTO public.users VALUES (87, 'user_1678786206469    ');
INSERT INTO public.users VALUES (80, '1                     ');
INSERT INTO public.users VALUES (90, 'user_1678789610544    ');
INSERT INTO public.users VALUES (89, 'user_1678789610545    ');
INSERT INTO public.users VALUES (91, 'qwe                   ');
INSERT INTO public.users VALUES (92, 'user_1678790090347    ');
INSERT INTO public.users VALUES (93, 'user_1678790090346    ');
INSERT INTO public.users VALUES (94, 'uwe                   ');
INSERT INTO public.users VALUES (95, 'user_1678790317320    ');
INSERT INTO public.users VALUES (96, 'user_1678790317319    ');
INSERT INTO public.users VALUES (97, 'Uwe                   ');
INSERT INTO public.users VALUES (98, '12345                 ');
INSERT INTO public.users VALUES (99, 'user_1678790404295    ');
INSERT INTO public.users VALUES (100, 'user_1678790404294    ');
INSERT INTO public.users VALUES (101, 'asd                   ');
INSERT INTO public.users VALUES (102, 'user_1678790515802    ');
INSERT INTO public.users VALUES (103, 'user_1678790515801    ');
INSERT INTO public.users VALUES (104, 'user_1678790762078    ');
INSERT INTO public.users VALUES (105, 'user_1678790762077    ');
INSERT INTO public.users VALUES (106, 'user_1678790857967    ');
INSERT INTO public.users VALUES (107, 'user_1678790857966    ');
INSERT INTO public.users VALUES (108, '                      ');
INSERT INTO public.users VALUES (109, 'user_1678793660267    ');
INSERT INTO public.users VALUES (110, 'user_1678793660266    ');
INSERT INTO public.users VALUES (111, 'user_1678793716293    ');
INSERT INTO public.users VALUES (112, 'user_1678793716292    ');
INSERT INTO public.users VALUES (113, 'user_1678793758122    ');
INSERT INTO public.users VALUES (114, 'user_1678793758121    ');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 114, true);


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
-- Name: games fkey_games_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey_games_users_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


