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
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 1000
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

INSERT INTO public.games VALUES (1, 16, 329);
INSERT INTO public.games VALUES (2, 16, 442);
INSERT INTO public.games VALUES (3, 17, 590);
INSERT INTO public.games VALUES (4, 17, 401);
INSERT INTO public.games VALUES (5, 16, 306);
INSERT INTO public.games VALUES (6, 16, 160);
INSERT INTO public.games VALUES (7, 16, 210);
INSERT INTO public.games VALUES (8, 18, 904);
INSERT INTO public.games VALUES (9, 18, 354);
INSERT INTO public.games VALUES (10, 19, 466);
INSERT INTO public.games VALUES (11, 19, 715);
INSERT INTO public.games VALUES (12, 18, 699);
INSERT INTO public.games VALUES (13, 18, 814);
INSERT INTO public.games VALUES (14, 18, 899);
INSERT INTO public.games VALUES (15, 1, 18);
INSERT INTO public.games VALUES (16, 20, 194);
INSERT INTO public.games VALUES (17, 20, 596);
INSERT INTO public.games VALUES (18, 21, 839);
INSERT INTO public.games VALUES (19, 21, 128);
INSERT INTO public.games VALUES (20, 20, 73);
INSERT INTO public.games VALUES (21, 20, 548);
INSERT INTO public.games VALUES (22, 20, 158);
INSERT INTO public.games VALUES (23, 22, 176);
INSERT INTO public.games VALUES (24, 22, 501);
INSERT INTO public.games VALUES (25, 23, 45);
INSERT INTO public.games VALUES (26, 23, 723);
INSERT INTO public.games VALUES (27, 22, 974);
INSERT INTO public.games VALUES (28, 22, 155);
INSERT INTO public.games VALUES (29, 22, 166);
INSERT INTO public.games VALUES (30, 24, 669);
INSERT INTO public.games VALUES (31, 24, 227);
INSERT INTO public.games VALUES (32, 25, 142);
INSERT INTO public.games VALUES (33, 25, 510);
INSERT INTO public.games VALUES (34, 24, 471);
INSERT INTO public.games VALUES (35, 24, 40);
INSERT INTO public.games VALUES (36, 24, 668);
INSERT INTO public.games VALUES (37, 26, 574);
INSERT INTO public.games VALUES (38, 26, 560);
INSERT INTO public.games VALUES (39, 27, 199);
INSERT INTO public.games VALUES (40, 27, 440);
INSERT INTO public.games VALUES (41, 26, 647);
INSERT INTO public.games VALUES (42, 26, 555);
INSERT INTO public.games VALUES (43, 26, 744);
INSERT INTO public.games VALUES (44, 28, 821);
INSERT INTO public.games VALUES (45, 28, 824);
INSERT INTO public.games VALUES (46, 29, 801);
INSERT INTO public.games VALUES (47, 29, 693);
INSERT INTO public.games VALUES (48, 28, 292);
INSERT INTO public.games VALUES (49, 28, 867);
INSERT INTO public.games VALUES (50, 28, 889);
INSERT INTO public.games VALUES (51, 30, 251);
INSERT INTO public.games VALUES (52, 30, 971);
INSERT INTO public.games VALUES (53, 31, 412);
INSERT INTO public.games VALUES (54, 31, 782);
INSERT INTO public.games VALUES (55, 30, 992);
INSERT INTO public.games VALUES (56, 30, 46);
INSERT INTO public.games VALUES (57, 30, 145);
INSERT INTO public.games VALUES (58, 32, 187);
INSERT INTO public.games VALUES (59, 32, 480);
INSERT INTO public.games VALUES (60, 33, 2);
INSERT INTO public.games VALUES (61, 33, 302);
INSERT INTO public.games VALUES (62, 32, 984);
INSERT INTO public.games VALUES (63, 32, 603);
INSERT INTO public.games VALUES (64, 32, 61);
INSERT INTO public.games VALUES (65, 34, 157);
INSERT INTO public.games VALUES (66, 34, 477);
INSERT INTO public.games VALUES (67, 35, 891);
INSERT INTO public.games VALUES (68, 35, 743);
INSERT INTO public.games VALUES (69, 34, 731);
INSERT INTO public.games VALUES (70, 34, 64);
INSERT INTO public.games VALUES (71, 34, 467);
INSERT INTO public.games VALUES (72, 36, 610);
INSERT INTO public.games VALUES (73, 36, 599);
INSERT INTO public.games VALUES (74, 37, 387);
INSERT INTO public.games VALUES (75, 37, 858);
INSERT INTO public.games VALUES (76, 36, 224);
INSERT INTO public.games VALUES (77, 36, 414);
INSERT INTO public.games VALUES (78, 36, 360);
INSERT INTO public.games VALUES (79, 38, 719);
INSERT INTO public.games VALUES (80, 38, 529);
INSERT INTO public.games VALUES (81, 39, 785);
INSERT INTO public.games VALUES (82, 39, 873);
INSERT INTO public.games VALUES (83, 38, 439);
INSERT INTO public.games VALUES (84, 38, 561);
INSERT INTO public.games VALUES (85, 38, 596);
INSERT INTO public.games VALUES (86, 40, 259);
INSERT INTO public.games VALUES (87, 40, 901);
INSERT INTO public.games VALUES (88, 41, 38);
INSERT INTO public.games VALUES (89, 41, 952);
INSERT INTO public.games VALUES (90, 40, 104);
INSERT INTO public.games VALUES (91, 40, 533);
INSERT INTO public.games VALUES (92, 40, 622);
INSERT INTO public.games VALUES (93, 42, 902);
INSERT INTO public.games VALUES (94, 42, 260);
INSERT INTO public.games VALUES (95, 43, 569);
INSERT INTO public.games VALUES (96, 43, 30);
INSERT INTO public.games VALUES (97, 42, 126);
INSERT INTO public.games VALUES (98, 42, 468);
INSERT INTO public.games VALUES (99, 42, 277);
INSERT INTO public.games VALUES (100, 44, 748);
INSERT INTO public.games VALUES (101, 44, 765);
INSERT INTO public.games VALUES (102, 45, 785);
INSERT INTO public.games VALUES (103, 45, 751);
INSERT INTO public.games VALUES (104, 44, 821);
INSERT INTO public.games VALUES (105, 44, 93);
INSERT INTO public.games VALUES (106, 44, 853);
INSERT INTO public.games VALUES (107, 46, 38);
INSERT INTO public.games VALUES (108, 46, 106);
INSERT INTO public.games VALUES (109, 47, 299);
INSERT INTO public.games VALUES (110, 47, 429);
INSERT INTO public.games VALUES (111, 46, 214);
INSERT INTO public.games VALUES (112, 46, 517);
INSERT INTO public.games VALUES (113, 46, 409);
INSERT INTO public.games VALUES (114, 48, 858);
INSERT INTO public.games VALUES (115, 48, 827);
INSERT INTO public.games VALUES (116, 49, 948);
INSERT INTO public.games VALUES (117, 49, 763);
INSERT INTO public.games VALUES (118, 48, 202);
INSERT INTO public.games VALUES (119, 48, 847);
INSERT INTO public.games VALUES (120, 48, 149);
INSERT INTO public.games VALUES (121, 50, 964);
INSERT INTO public.games VALUES (122, 50, 147);
INSERT INTO public.games VALUES (123, 51, 255);
INSERT INTO public.games VALUES (124, 51, 479);
INSERT INTO public.games VALUES (125, 50, 716);
INSERT INTO public.games VALUES (126, 50, 150);
INSERT INTO public.games VALUES (127, 50, 180);
INSERT INTO public.games VALUES (128, 52, 647);
INSERT INTO public.games VALUES (129, 52, 52);
INSERT INTO public.games VALUES (130, 53, 957);
INSERT INTO public.games VALUES (131, 53, 313);
INSERT INTO public.games VALUES (132, 52, 204);
INSERT INTO public.games VALUES (133, 52, 268);
INSERT INTO public.games VALUES (134, 52, 573);
INSERT INTO public.games VALUES (135, 54, 213);
INSERT INTO public.games VALUES (136, 54, 357);
INSERT INTO public.games VALUES (137, 55, 654);
INSERT INTO public.games VALUES (138, 55, 7);
INSERT INTO public.games VALUES (139, 54, 862);
INSERT INTO public.games VALUES (140, 54, 389);
INSERT INTO public.games VALUES (141, 54, 948);
INSERT INTO public.games VALUES (142, 56, 892);
INSERT INTO public.games VALUES (143, 56, 629);
INSERT INTO public.games VALUES (144, 57, 244);
INSERT INTO public.games VALUES (145, 57, 1002);
INSERT INTO public.games VALUES (146, 56, 215);
INSERT INTO public.games VALUES (147, 56, 68);
INSERT INTO public.games VALUES (148, 56, 691);
INSERT INTO public.games VALUES (149, 58, 108);
INSERT INTO public.games VALUES (150, 58, 153);
INSERT INTO public.games VALUES (151, 59, 788);
INSERT INTO public.games VALUES (152, 59, 336);
INSERT INTO public.games VALUES (153, 58, 609);
INSERT INTO public.games VALUES (154, 58, 115);
INSERT INTO public.games VALUES (155, 58, 804);
INSERT INTO public.games VALUES (156, 60, 53);
INSERT INTO public.games VALUES (157, 60, 393);
INSERT INTO public.games VALUES (158, 61, 136);
INSERT INTO public.games VALUES (159, 61, 263);
INSERT INTO public.games VALUES (160, 60, 977);
INSERT INTO public.games VALUES (161, 60, 760);
INSERT INTO public.games VALUES (162, 60, 859);
INSERT INTO public.games VALUES (163, 62, 438);
INSERT INTO public.games VALUES (164, 62, 246);
INSERT INTO public.games VALUES (165, 63, 103);
INSERT INTO public.games VALUES (166, 63, 374);
INSERT INTO public.games VALUES (167, 62, 280);
INSERT INTO public.games VALUES (168, 62, 884);
INSERT INTO public.games VALUES (169, 62, 858);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'neriah', 0, 1000);
INSERT INTO public.users VALUES (2, 'user_1738946362394', 0, 1000);
INSERT INTO public.users VALUES (3, 'user_1738946362393', 0, 1000);
INSERT INTO public.users VALUES (4, 'user_1738946497250', 0, 1000);
INSERT INTO public.users VALUES (5, 'user_1738946497249', 0, 1000);
INSERT INTO public.users VALUES (6, 'user_1738946536980', 0, 1000);
INSERT INTO public.users VALUES (7, 'user_1738946536979', 0, 1000);
INSERT INTO public.users VALUES (8, 'user_1738946552918', 0, 1000);
INSERT INTO public.users VALUES (9, 'user_1738946552917', 0, 1000);
INSERT INTO public.users VALUES (10, 'user_1738946565257', 0, 1000);
INSERT INTO public.users VALUES (11, 'user_1738946565256', 0, 1000);
INSERT INTO public.users VALUES (12, 'user_1738946577421', 0, 1000);
INSERT INTO public.users VALUES (13, 'user_1738946577420', 0, 1000);
INSERT INTO public.users VALUES (14, 'user_1738946585363', 0, 1000);
INSERT INTO public.users VALUES (15, 'user_1738946585362', 0, 1000);
INSERT INTO public.users VALUES (16, 'user_1738946790367', 0, 1000);
INSERT INTO public.users VALUES (17, 'user_1738946790366', 0, 1000);
INSERT INTO public.users VALUES (18, 'user_1738946796198', 0, 1000);
INSERT INTO public.users VALUES (19, 'user_1738946796197', 0, 1000);
INSERT INTO public.users VALUES (20, 'user_1738946908934', 0, 1000);
INSERT INTO public.users VALUES (21, 'user_1738946908933', 0, 1000);
INSERT INTO public.users VALUES (22, 'user_1738946914510', 0, 1000);
INSERT INTO public.users VALUES (23, 'user_1738946914509', 0, 1000);
INSERT INTO public.users VALUES (24, 'user_1738946967011', 0, 1000);
INSERT INTO public.users VALUES (25, 'user_1738946967010', 0, 1000);
INSERT INTO public.users VALUES (26, 'user_1738946977382', 0, 1000);
INSERT INTO public.users VALUES (27, 'user_1738946977381', 0, 1000);
INSERT INTO public.users VALUES (28, 'user_1738946987798', 0, 1000);
INSERT INTO public.users VALUES (29, 'user_1738946987797', 0, 1000);
INSERT INTO public.users VALUES (30, 'user_1738946998334', 0, 1000);
INSERT INTO public.users VALUES (31, 'user_1738946998333', 0, 1000);
INSERT INTO public.users VALUES (32, 'user_1738947004973', 0, 1000);
INSERT INTO public.users VALUES (33, 'user_1738947004972', 0, 1000);
INSERT INTO public.users VALUES (34, 'user_1738947012923', 0, 1000);
INSERT INTO public.users VALUES (35, 'user_1738947012922', 0, 1000);
INSERT INTO public.users VALUES (36, 'user_1738947019288', 0, 1000);
INSERT INTO public.users VALUES (37, 'user_1738947019287', 0, 1000);
INSERT INTO public.users VALUES (38, 'user_1738947024303', 0, 1000);
INSERT INTO public.users VALUES (39, 'user_1738947024302', 0, 1000);
INSERT INTO public.users VALUES (40, 'user_1738947032799', 0, 1000);
INSERT INTO public.users VALUES (41, 'user_1738947032798', 0, 1000);
INSERT INTO public.users VALUES (42, 'user_1738947045725', 0, 1000);
INSERT INTO public.users VALUES (43, 'user_1738947045724', 0, 1000);
INSERT INTO public.users VALUES (44, 'user_1738947054520', 0, 1000);
INSERT INTO public.users VALUES (45, 'user_1738947054519', 0, 1000);
INSERT INTO public.users VALUES (46, 'user_1738947071948', 0, 1000);
INSERT INTO public.users VALUES (47, 'user_1738947071947', 0, 1000);
INSERT INTO public.users VALUES (48, 'user_1738947077243', 0, 1000);
INSERT INTO public.users VALUES (49, 'user_1738947077242', 0, 1000);
INSERT INTO public.users VALUES (50, 'user_1738947083539', 0, 1000);
INSERT INTO public.users VALUES (51, 'user_1738947083538', 0, 1000);
INSERT INTO public.users VALUES (52, 'user_1738947089462', 0, 1000);
INSERT INTO public.users VALUES (53, 'user_1738947089461', 0, 1000);
INSERT INTO public.users VALUES (54, 'user_1738947094855', 0, 1000);
INSERT INTO public.users VALUES (55, 'user_1738947094854', 0, 1000);
INSERT INTO public.users VALUES (56, 'user_1738947107349', 0, 1000);
INSERT INTO public.users VALUES (57, 'user_1738947107348', 0, 1000);
INSERT INTO public.users VALUES (58, 'user_1738947124799', 0, 1000);
INSERT INTO public.users VALUES (59, 'user_1738947124798', 0, 1000);
INSERT INTO public.users VALUES (60, 'user_1738947193877', 0, 1000);
INSERT INTO public.users VALUES (61, 'user_1738947193876', 0, 1000);
INSERT INTO public.users VALUES (62, 'user_1738947320893', 0, 1000);
INSERT INTO public.users VALUES (63, 'user_1738947320892', 0, 1000);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 169, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 63, true);


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
