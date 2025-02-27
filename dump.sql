--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO kirill;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO kirill;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO kirill;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO kirill;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO kirill;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO kirill;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO kirill;

--
-- Name: users_customuser; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.users_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(64) NOT NULL,
    username character varying(48) NOT NULL,
    first_name character varying(48) NOT NULL,
    last_name character varying(48) NOT NULL,
    gender character varying(1) NOT NULL,
    age integer,
    city character varying(48) NOT NULL,
    bio text,
    data_joined timestamp with time zone NOT NULL,
    avatar character varying(100),
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    CONSTRAINT users_customuser_age_check CHECK ((age >= 0))
);


ALTER TABLE public.users_customuser OWNER TO kirill;

--
-- Name: users_customuser_groups; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.users_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_customuser_groups OWNER TO kirill;

--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.users_customuser_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.users_customuser ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users_customuser_user_permissions; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.users_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_customuser_user_permissions OWNER TO kirill;

--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.users_customuser_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users_friendship; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.users_friendship (
    id bigint NOT NULL,
    status character varying(10) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    friend_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.users_friendship OWNER TO kirill;

--
-- Name: users_friendship_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.users_friendship ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_friendship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users_userprofilesettings; Type: TABLE; Schema: public; Owner: kirill
--

CREATE TABLE public.users_userprofilesettings (
    id bigint NOT NULL,
    invisible_friendlist boolean NOT NULL,
    user_id bigint
);


ALTER TABLE public.users_userprofilesettings OWNER TO kirill;

--
-- Name: users_userprofilesettings_id_seq; Type: SEQUENCE; Schema: public; Owner: kirill
--

ALTER TABLE public.users_userprofilesettings ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_userprofilesettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Пользователь	6	add_customuser
22	Can change Пользователь	6	change_customuser
23	Can delete Пользователь	6	delete_customuser
24	Can view Пользователь	6	view_customuser
25	Can add Дружба	7	add_friendship
26	Can change Дружба	7	change_friendship
27	Can delete Дружба	7	delete_friendship
28	Can view Дружба	7	view_friendship
29	Can add Настройки профиля	8	add_userprofilesettings
30	Can change Настройки профиля	8	change_userprofilesettings
31	Can delete Настройки профиля	8	delete_userprofilesettings
32	Can view Настройки профиля	8	view_userprofilesettings
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-10-19 23:44:42.156167+00	1	admin	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f", "\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f", "\\u0413\\u0435\\u043d\\u0434\\u0435\\u0440", "\\u0412\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442", "\\u0413\\u043e\\u0440\\u043e\\u0434", "Bio"]}}]	6	1
2	2024-10-19 23:48:16.307525+00	2	UserProfileSettings object (2)	2	[{"changed": {"fields": ["Invisible friendlist"]}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	customuser
7	users	friendship
8	users	userprofilesettings
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-10-19 23:41:02.6265+00
2	contenttypes	0002_remove_content_type_name	2024-10-19 23:41:02.632357+00
3	auth	0001_initial	2024-10-19 23:41:02.663053+00
4	auth	0002_alter_permission_name_max_length	2024-10-19 23:41:02.667933+00
5	auth	0003_alter_user_email_max_length	2024-10-19 23:41:02.672054+00
6	auth	0004_alter_user_username_opts	2024-10-19 23:41:02.677909+00
7	auth	0005_alter_user_last_login_null	2024-10-19 23:41:02.683772+00
8	auth	0006_require_contenttypes_0002	2024-10-19 23:41:02.686653+00
9	auth	0007_alter_validators_add_error_messages	2024-10-19 23:41:02.69056+00
10	auth	0008_alter_user_username_max_length	2024-10-19 23:41:02.696416+00
11	auth	0009_alter_user_last_name_max_length	2024-10-19 23:41:02.701296+00
12	auth	0010_alter_group_name_max_length	2024-10-19 23:41:02.707152+00
13	auth	0011_update_proxy_permissions	2024-10-19 23:41:02.712032+00
14	auth	0012_alter_user_first_name_max_length	2024-10-19 23:41:02.719839+00
15	users	0001_initial	2024-10-19 23:41:02.754+00
16	admin	0001_initial	2024-10-19 23:41:02.770596+00
17	admin	0002_logentry_remove_auto_add	2024-10-19 23:41:02.776452+00
18	admin	0003_logentry_add_action_flag_choices	2024-10-19 23:41:02.783284+00
19	sessions	0001_initial	2024-10-19 23:41:02.795151+00
20	users	0002_customuser_is_staff_alter_customuser_username	2024-10-19 23:41:02.811744+00
21	users	0003_alter_customuser_gender	2024-10-19 23:41:02.817602+00
22	users	0004_alter_customuser_age	2024-10-19 23:41:02.824432+00
23	users	0005_friendship	2024-10-19 23:41:02.842975+00
24	users	0006_userprofilesettings	2024-10-19 23:41:02.856639+00
25	users	0007_alter_userprofilesettings_options_and_more	2024-10-19 23:41:02.884943+00
26	users	0008_alter_userprofilesettings_user	2024-10-19 23:41:02.895679+00
27	users	0009_alter_userprofilesettings_invisible_friendlist	2024-10-19 23:53:47.444171+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
isbflm4nvhvbbyqsqvrt7aat7vpzt3r5	.eJxVjEsOwjAMBe-SNYpwPnXDkj1nqFzboQWUSk27QtwdReoCtm9m3tsMtG_TsFddh1nMxYA5_W4j8VNLA_Kgcl8sL2Vb59E2xR602tsi-roe7t_BRHVqdYQIqQs-S48RERgokFPyiTLqCKAoGM_QJ_ZeWCiwupRzSI47VPP5Ate7OA8:1t2J8d:CILOhrP-lphc17ZDOJLRLLkxgDSeqV1udbmR4BK3niU	2024-11-02 23:45:39.473425+00
hfxt2a0ehfstgk30fb3y33gm4z90j9ui	.eJxVjEsOwjAMBe-SNYpwPnXDkj1nqFzboQWUSk27QtwdReoCtm9m3tsMtG_TsFddh1nMxYA5_W4j8VNLA_Kgcl8sL2Vb59E2xR602tsi-roe7t_BRHVqdYQIqQs-S48RERgokFPyiTLqCKAoGM_QJ_ZeWCiwupRzSI47VPP5Ate7OA8:1t2dHl:kiNKhAvzcQ2eD0nhcpOtYtP3CCvdv59l5Yr1tMxDyWo	2024-11-03 21:16:25.470163+00
p7tm6t36im75yl9894dhvxkeecxwhgk4	.eJxVjEsOwjAMBe-SNYpwPnXDkj1nqFzboQWUSk27QtwdReoCtm9m3tsMtG_TsFddh1nMxYA5_W4j8VNLA_Kgcl8sL2Vb59E2xR602tsi-roe7t_BRHVqdYQIqQs-S48RERgokFPyiTLqCKAoGM_QJ_ZeWCiwupRzSI47VPP5Ate7OA8:1t8lvB:CByOOrZvk2fX0BiXZaIWfEA_3mbmE7WOWMYRqeayM1o	2024-11-20 19:42:29.811414+00
\.


--
-- Data for Name: users_customuser; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.users_customuser (id, password, last_login, is_superuser, email, username, first_name, last_name, gender, age, city, bio, data_joined, avatar, is_active, is_staff) FROM stdin;
2	pbkdf2_sha256$600000$JRG18MMKCYcBvFCYvFQZOa$yzQIcuAfchGxzhE1bptPEol+ckJXNtzIljRD3oMlF8Y=	2024-10-19 23:51:44.701615+00	f	12345d@dsds.com	123	Кирилл223232	Куликов323232	1	18	Saratov	SOME BIO ABOUT кирилл	2024-10-19 23:43:36.573163+00		t	f
1	pbkdf2_sha256$600000$QV0QNMuGTQ7i531SGbgeTa$wpiXsqDp5WJSIRa9vQLwWpuNq2NC+be9XmojiavOSiI=	2024-11-06 19:42:29.808486+00	t	admin@admin.admin	admin	admin_name	admin_surname	1	99	ADMINCITY	adminbio	2024-10-19 23:41:31.850357+00		t	t
\.


--
-- Data for Name: users_customuser_groups; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.users_customuser_groups (id, customuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.users_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: users_friendship; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.users_friendship (id, status, created_at, friend_id, user_id) FROM stdin;
1	accepted	2024-10-19 23:43:45.047297+00	1	2
2	accepted	2024-10-19 23:44:05.015212+00	2	1
\.


--
-- Data for Name: users_userprofilesettings; Type: TABLE DATA; Schema: public; Owner: kirill
--

COPY public.users_userprofilesettings (id, invisible_friendlist, user_id) FROM stdin;
2	t	2
1	t	1
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 1, false);


--
-- Name: users_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.users_customuser_id_seq', 2, true);


--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 1, false);


--
-- Name: users_friendship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.users_friendship_id_seq', 2, true);


--
-- Name: users_userprofilesettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kirill
--

SELECT pg_catalog.setval('public.users_userprofilesettings_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: users_customuser users_customuser_email_key; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_email_key UNIQUE (email);


--
-- Name: users_customuser_groups users_customuser_groups_customuser_id_group_id_76b619e3_uniq; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq UNIQUE (customuser_id, group_id);


--
-- Name: users_customuser_groups users_customuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_pkey PRIMARY KEY (id);


--
-- Name: users_customuser users_customuser_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_pkey PRIMARY KEY (id);


--
-- Name: users_customuser_user_permissions users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq UNIQUE (customuser_id, permission_id);


--
-- Name: users_customuser_user_permissions users_customuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_customuser users_customuser_username_80452fdf_uniq; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_username_80452fdf_uniq UNIQUE (username);


--
-- Name: users_friendship users_friendship_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_friendship
    ADD CONSTRAINT users_friendship_pkey PRIMARY KEY (id);


--
-- Name: users_friendship users_friendship_user_id_friend_id_ae2ab8f0_uniq; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_friendship
    ADD CONSTRAINT users_friendship_user_id_friend_id_ae2ab8f0_uniq UNIQUE (user_id, friend_id);


--
-- Name: users_userprofilesettings users_userprofilesettings_pkey; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_userprofilesettings
    ADD CONSTRAINT users_userprofilesettings_pkey PRIMARY KEY (id);


--
-- Name: users_userprofilesettings users_userprofilesettings_user_id_8c616623_uniq; Type: CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_userprofilesettings
    ADD CONSTRAINT users_userprofilesettings_user_id_8c616623_uniq UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: users_customuser_email_6445acef_like; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX users_customuser_email_6445acef_like ON public.users_customuser USING btree (email varchar_pattern_ops);


--
-- Name: users_customuser_groups_customuser_id_958147bf; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX users_customuser_groups_customuser_id_958147bf ON public.users_customuser_groups USING btree (customuser_id);


--
-- Name: users_customuser_groups_group_id_01390b14; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX users_customuser_groups_group_id_01390b14 ON public.users_customuser_groups USING btree (group_id);


--
-- Name: users_customuser_user_permissions_customuser_id_5771478b; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX users_customuser_user_permissions_customuser_id_5771478b ON public.users_customuser_user_permissions USING btree (customuser_id);


--
-- Name: users_customuser_user_permissions_permission_id_baaa2f74; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX users_customuser_user_permissions_permission_id_baaa2f74 ON public.users_customuser_user_permissions USING btree (permission_id);


--
-- Name: users_customuser_username_80452fdf_like; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX users_customuser_username_80452fdf_like ON public.users_customuser USING btree (username varchar_pattern_ops);


--
-- Name: users_friendship_friend_id_eb7069c6; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX users_friendship_friend_id_eb7069c6 ON public.users_friendship USING btree (friend_id);


--
-- Name: users_friendship_user_id_299f332b; Type: INDEX; Schema: public; Owner: kirill
--

CREATE INDEX users_friendship_user_id_299f332b ON public.users_friendship USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_groups users_customuser_gro_customuser_id_958147bf_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_groups users_customuser_groups_group_id_01390b14_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_user_permissions users_customuser_use_customuser_id_5771478b_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_user_permissions users_customuser_use_permission_id_baaa2f74_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_friendship users_friendship_friend_id_eb7069c6_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_friendship
    ADD CONSTRAINT users_friendship_friend_id_eb7069c6_fk_users_customuser_id FOREIGN KEY (friend_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_friendship users_friendship_user_id_299f332b_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_friendship
    ADD CONSTRAINT users_friendship_user_id_299f332b_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userprofilesettings users_userprofileset_user_id_8c616623_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: kirill
--

ALTER TABLE ONLY public.users_userprofilesettings
    ADD CONSTRAINT users_userprofileset_user_id_8c616623_fk_users_cus FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

