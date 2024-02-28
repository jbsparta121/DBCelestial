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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played bigint DEFAULT 0 NOT NULL
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
-- Name: won_user_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.won_user_games (
    won_game_id integer NOT NULL,
    user_id integer NOT NULL,
    guess_count integer
);


ALTER TABLE public.won_user_games OWNER TO freecodecamp;

--
-- Name: won_user_games_won_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.won_user_games_won_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.won_user_games_won_game_id_seq OWNER TO freecodecamp;

--
-- Name: won_user_games_won_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.won_user_games_won_game_id_seq OWNED BY public.won_user_games.won_game_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: won_user_games won_game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games ALTER COLUMN won_game_id SET DEFAULT nextval('public.won_user_games_won_game_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (67, 'user_1672954897659', 0);
INSERT INTO public.users VALUES (68, 'user_1672954897658', 0);
INSERT INTO public.users VALUES (69, 'user_1672957996983', 0);
INSERT INTO public.users VALUES (70, 'user_1672957996982', 0);
INSERT INTO public.users VALUES (71, 'user_1672958023465', 0);
INSERT INTO public.users VALUES (72, 'user_1672958023464', 0);
INSERT INTO public.users VALUES (73, 'Kuba', 0);
INSERT INTO public.users VALUES (74, 'user_1672959072228', 0);
INSERT INTO public.users VALUES (75, 'user_1672959072227', 0);
INSERT INTO public.users VALUES (76, 'user_1672959870463', 0);
INSERT INTO public.users VALUES (77, 'user_1672959870462', 0);
INSERT INTO public.users VALUES (78, 'KUBA', 0);
INSERT INTO public.users VALUES (79, 'user_1672960513718', 0);
INSERT INTO public.users VALUES (80, 'user_1672960513717', 0);
INSERT INTO public.users VALUES (81, 'user_1672960627801', 0);
INSERT INTO public.users VALUES (82, 'user_1672960627800', 0);
INSERT INTO public.users VALUES (83, 'dbil', 0);
INSERT INTO public.users VALUES (84, 'KAFDSA', 0);
INSERT INTO public.users VALUES (85, 'DEBIL', 0);
INSERT INTO public.users VALUES (86, 'user_1672960876753', 0);
INSERT INTO public.users VALUES (87, 'user_1672960876752', 0);
INSERT INTO public.users VALUES (88, 'user_1672960949707', 0);
INSERT INTO public.users VALUES (89, 'user_1672960949706', 0);
INSERT INTO public.users VALUES (90, 'user_1672961067961', 0);
INSERT INTO public.users VALUES (91, 'user_1672961067960', 0);
INSERT INTO public.users VALUES (92, 'debil', 0);
INSERT INTO public.users VALUES (93, 'user_1672961187911', 0);
INSERT INTO public.users VALUES (94, 'user_1672961187910', 0);
INSERT INTO public.users VALUES (95, 'user_1672961437873', 0);
INSERT INTO public.users VALUES (96, 'user_1672961437872', 0);
INSERT INTO public.users VALUES (97, 'user_1672961529799', 0);
INSERT INTO public.users VALUES (98, 'user_1672961529798', 0);
INSERT INTO public.users VALUES (99, 'user_1709151682611', 0);
INSERT INTO public.users VALUES (100, 'user_1709151682610', 0);
INSERT INTO public.users VALUES (101, 'user_1709151726987', 0);
INSERT INTO public.users VALUES (102, 'user_1709151726986', 0);
INSERT INTO public.users VALUES (103, 'user_1709151862000', 0);
INSERT INTO public.users VALUES (104, 'user_1709151861998', 0);


--
-- Data for Name: won_user_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.won_user_games VALUES (180, 67, 9);
INSERT INTO public.won_user_games VALUES (181, 67, 2);
INSERT INTO public.won_user_games VALUES (182, 68, 8);
INSERT INTO public.won_user_games VALUES (183, 68, 5);
INSERT INTO public.won_user_games VALUES (184, 67, 1);
INSERT INTO public.won_user_games VALUES (185, 67, 7);
INSERT INTO public.won_user_games VALUES (186, 67, 6);
INSERT INTO public.won_user_games VALUES (187, 69, 106);
INSERT INTO public.won_user_games VALUES (188, 69, 411);
INSERT INTO public.won_user_games VALUES (189, 70, 715);
INSERT INTO public.won_user_games VALUES (190, 70, 361);
INSERT INTO public.won_user_games VALUES (191, 69, 791);
INSERT INTO public.won_user_games VALUES (192, 69, 285);
INSERT INTO public.won_user_games VALUES (193, 69, 117);
INSERT INTO public.won_user_games VALUES (194, 71, 2);
INSERT INTO public.won_user_games VALUES (195, 71, 9);
INSERT INTO public.won_user_games VALUES (196, 72, 10);
INSERT INTO public.won_user_games VALUES (197, 72, 5);
INSERT INTO public.won_user_games VALUES (198, 71, 13);
INSERT INTO public.won_user_games VALUES (199, 71, 11);
INSERT INTO public.won_user_games VALUES (200, 71, 3);
INSERT INTO public.won_user_games VALUES (201, 73, 11);
INSERT INTO public.won_user_games VALUES (202, 73, 11);
INSERT INTO public.won_user_games VALUES (203, 73, 10);
INSERT INTO public.won_user_games VALUES (204, 73, 10);
INSERT INTO public.won_user_games VALUES (205, 73, 13);
INSERT INTO public.won_user_games VALUES (206, 74, 831);
INSERT INTO public.won_user_games VALUES (207, 74, 311);
INSERT INTO public.won_user_games VALUES (208, 75, 121);
INSERT INTO public.won_user_games VALUES (209, 75, 584);
INSERT INTO public.won_user_games VALUES (210, 74, 304);
INSERT INTO public.won_user_games VALUES (211, 74, 549);
INSERT INTO public.won_user_games VALUES (212, 74, 868);
INSERT INTO public.won_user_games VALUES (213, 73, 17);
INSERT INTO public.won_user_games VALUES (214, 73, 3);
INSERT INTO public.won_user_games VALUES (215, 76, 7);
INSERT INTO public.won_user_games VALUES (216, 76, 5);
INSERT INTO public.won_user_games VALUES (217, 77, 9);
INSERT INTO public.won_user_games VALUES (218, 77, 10);
INSERT INTO public.won_user_games VALUES (219, 76, 11);
INSERT INTO public.won_user_games VALUES (220, 76, 4);
INSERT INTO public.won_user_games VALUES (221, 76, 11);
INSERT INTO public.won_user_games VALUES (222, 73, 1);
INSERT INTO public.won_user_games VALUES (223, 73, 4);
INSERT INTO public.won_user_games VALUES (224, 78, 4);
INSERT INTO public.won_user_games VALUES (225, 73, 2);
INSERT INTO public.won_user_games VALUES (226, 79, 992);
INSERT INTO public.won_user_games VALUES (227, 79, 756);
INSERT INTO public.won_user_games VALUES (228, 80, 641);
INSERT INTO public.won_user_games VALUES (229, 80, 890);
INSERT INTO public.won_user_games VALUES (230, 79, 372);
INSERT INTO public.won_user_games VALUES (231, 79, 811);
INSERT INTO public.won_user_games VALUES (232, 79, 944);
INSERT INTO public.won_user_games VALUES (233, 81, 81);
INSERT INTO public.won_user_games VALUES (234, 81, 210);
INSERT INTO public.won_user_games VALUES (235, 82, 668);
INSERT INTO public.won_user_games VALUES (236, 82, 482);
INSERT INTO public.won_user_games VALUES (237, 81, 410);
INSERT INTO public.won_user_games VALUES (238, 81, 94);
INSERT INTO public.won_user_games VALUES (239, 81, 640);
INSERT INTO public.won_user_games VALUES (240, 85, 8);
INSERT INTO public.won_user_games VALUES (241, 86, 378);
INSERT INTO public.won_user_games VALUES (242, 86, 352);
INSERT INTO public.won_user_games VALUES (243, 87, 636);
INSERT INTO public.won_user_games VALUES (244, 87, 952);
INSERT INTO public.won_user_games VALUES (245, 86, 956);
INSERT INTO public.won_user_games VALUES (246, 86, 577);
INSERT INTO public.won_user_games VALUES (247, 86, 362);
INSERT INTO public.won_user_games VALUES (248, 88, 918);
INSERT INTO public.won_user_games VALUES (249, 88, 283);
INSERT INTO public.won_user_games VALUES (250, 89, 188);
INSERT INTO public.won_user_games VALUES (251, 89, 727);
INSERT INTO public.won_user_games VALUES (252, 88, 139);
INSERT INTO public.won_user_games VALUES (253, 88, 595);
INSERT INTO public.won_user_games VALUES (254, 88, 417);
INSERT INTO public.won_user_games VALUES (255, 90, 534);
INSERT INTO public.won_user_games VALUES (256, 90, 469);
INSERT INTO public.won_user_games VALUES (257, 91, 601);
INSERT INTO public.won_user_games VALUES (258, 91, 814);
INSERT INTO public.won_user_games VALUES (259, 90, 948);
INSERT INTO public.won_user_games VALUES (260, 90, 295);
INSERT INTO public.won_user_games VALUES (261, 90, 562);
INSERT INTO public.won_user_games VALUES (262, 92, 11);
INSERT INTO public.won_user_games VALUES (263, 93, 318);
INSERT INTO public.won_user_games VALUES (264, 93, 807);
INSERT INTO public.won_user_games VALUES (265, 94, 835);
INSERT INTO public.won_user_games VALUES (266, 94, 404);
INSERT INTO public.won_user_games VALUES (267, 93, 974);
INSERT INTO public.won_user_games VALUES (268, 93, 959);
INSERT INTO public.won_user_games VALUES (269, 93, 832);
INSERT INTO public.won_user_games VALUES (270, 92, 10);
INSERT INTO public.won_user_games VALUES (271, 95, 375);
INSERT INTO public.won_user_games VALUES (272, 95, 464);
INSERT INTO public.won_user_games VALUES (273, 96, 976);
INSERT INTO public.won_user_games VALUES (274, 96, 868);
INSERT INTO public.won_user_games VALUES (275, 95, 566);
INSERT INTO public.won_user_games VALUES (276, 95, 909);
INSERT INTO public.won_user_games VALUES (277, 95, 297);
INSERT INTO public.won_user_games VALUES (278, 97, 52);
INSERT INTO public.won_user_games VALUES (279, 97, 220);
INSERT INTO public.won_user_games VALUES (280, 98, 966);
INSERT INTO public.won_user_games VALUES (281, 98, 66);
INSERT INTO public.won_user_games VALUES (282, 97, 533);
INSERT INTO public.won_user_games VALUES (283, 97, 968);
INSERT INTO public.won_user_games VALUES (284, 97, 147);
INSERT INTO public.won_user_games VALUES (285, 99, 54);
INSERT INTO public.won_user_games VALUES (286, 99, 861);
INSERT INTO public.won_user_games VALUES (287, 100, 444);
INSERT INTO public.won_user_games VALUES (288, 100, 489);
INSERT INTO public.won_user_games VALUES (289, 99, 318);
INSERT INTO public.won_user_games VALUES (290, 99, 90);
INSERT INTO public.won_user_games VALUES (291, 99, 96);
INSERT INTO public.won_user_games VALUES (292, 101, 453);
INSERT INTO public.won_user_games VALUES (293, 101, 43);
INSERT INTO public.won_user_games VALUES (294, 102, 56);
INSERT INTO public.won_user_games VALUES (295, 102, 743);
INSERT INTO public.won_user_games VALUES (296, 101, 238);
INSERT INTO public.won_user_games VALUES (297, 101, 196);
INSERT INTO public.won_user_games VALUES (298, 101, 119);
INSERT INTO public.won_user_games VALUES (299, 103, 854);
INSERT INTO public.won_user_games VALUES (300, 103, 748);
INSERT INTO public.won_user_games VALUES (301, 104, 174);
INSERT INTO public.won_user_games VALUES (302, 104, 569);
INSERT INTO public.won_user_games VALUES (303, 103, 649);
INSERT INTO public.won_user_games VALUES (304, 103, 158);
INSERT INTO public.won_user_games VALUES (305, 103, 57);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 104, true);


--
-- Name: won_user_games_won_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.won_user_games_won_game_id_seq', 305, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: won_user_games won_user_games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games
    ADD CONSTRAINT won_user_games_pkey PRIMARY KEY (won_game_id);


--
-- Name: won_user_games won_user_games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games
    ADD CONSTRAINT won_user_games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

