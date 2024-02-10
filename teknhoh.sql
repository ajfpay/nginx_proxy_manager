--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5 (Debian 15.5-1.pgdg110+1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: announcements_announcement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_announcement (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(144),
    host_id bigint NOT NULL,
    content text,
    paragraph1 text,
    poster_path character varying(100),
    poster_path1 character varying(100),
    promo_end_date timestamp with time zone,
    slug character varying(100) NOT NULL,
    video character varying(140)
);


ALTER TABLE public.announcements_announcement OWNER TO postgres;

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_announcement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_announcement_id_seq OWNER TO postgres;

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_announcement_id_seq OWNED BY public.announcements_announcement.id;


--
-- Name: announcements_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id bigint NOT NULL
);


ALTER TABLE public.announcements_image OWNER TO postgres;

--
-- Name: announcements_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image_id_seq OWNER TO postgres;

--
-- Name: announcements_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image_id_seq OWNED BY public.announcements_image.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: favorites_favoritenorcharge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites_favoritenorcharge (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.favorites_favoritenorcharge OWNER TO postgres;

--
-- Name: favorites_favoritenorcharge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favorites_favoritenorcharge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorites_favoritenorcharge_id_seq OWNER TO postgres;

--
-- Name: favorites_favoritenorcharge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favorites_favoritenorcharge_id_seq OWNED BY public.favorites_favoritenorcharge.id;


--
-- Name: favorites_favoritenorcharge_nocharges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites_favoritenorcharge_nocharges (
    id integer NOT NULL,
    favoritenorcharge_id bigint NOT NULL,
    nocharge_id bigint NOT NULL
);


ALTER TABLE public.favorites_favoritenorcharge_nocharges OWNER TO postgres;

--
-- Name: favorites_favoritenorcharge_nocharges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favorites_favoritenorcharge_nocharges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorites_favoritenorcharge_nocharges_id_seq OWNER TO postgres;

--
-- Name: favorites_favoritenorcharge_nocharges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favorites_favoritenorcharge_nocharges_id_seq OWNED BY public.favorites_favoritenorcharge_nocharges.id;


--
-- Name: games_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_game (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(140) NOT NULL,
    caption_title character varying(140),
    description character varying(300) NOT NULL,
    game_type_id integer,
    host_id integer NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100)
);


ALTER TABLE public.games_game OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games_game.id;


--
-- Name: games_gametype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_gametype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.games_gametype OWNER TO postgres;

--
-- Name: games_gametype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_gametype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_gametype_id_seq OWNER TO postgres;

--
-- Name: games_gametype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_gametype_id_seq OWNED BY public.games_gametype.id;


--
-- Name: games_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80),
    file character varying(100) NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.games_photo OWNER TO postgres;

--
-- Name: games_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80),
    file character varying(100) NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.games_photo2 OWNER TO postgres;

--
-- Name: games_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_photo2_id_seq OWNER TO postgres;

--
-- Name: games_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_photo2_id_seq OWNED BY public.games_photo2.id;


--
-- Name: games_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_photo_id_seq OWNER TO postgres;

--
-- Name: games_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_photo_id_seq OWNED BY public.games_photo.id;


--
-- Name: guides_articletype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guides_articletype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL
);


ALTER TABLE public.guides_articletype OWNER TO postgres;

--
-- Name: guides_articletype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guides_articletype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guides_articletype_id_seq OWNER TO postgres;

--
-- Name: guides_articletype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guides_articletype_id_seq OWNED BY public.guides_articletype.id;


--
-- Name: guides_guide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guides_guide (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100),
    article_type_id integer,
    host_id integer NOT NULL
);


ALTER TABLE public.guides_guide OWNER TO postgres;

--
-- Name: guides_guide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guides_guide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guides_guide_id_seq OWNER TO postgres;

--
-- Name: guides_guide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guides_guide_id_seq OWNED BY public.guides_guide.id;


--
-- Name: guides_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guides_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    guide_id integer NOT NULL
);


ALTER TABLE public.guides_photo OWNER TO postgres;

--
-- Name: guides_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guides_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    guide_id integer NOT NULL
);


ALTER TABLE public.guides_photo2 OWNER TO postgres;

--
-- Name: guides_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guides_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guides_photo2_id_seq OWNER TO postgres;

--
-- Name: guides_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guides_photo2_id_seq OWNED BY public.guides_photo2.id;


--
-- Name: guides_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guides_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guides_photo_id_seq OWNER TO postgres;

--
-- Name: guides_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guides_photo_id_seq OWNED BY public.guides_photo.id;


--
-- Name: news_articletype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_articletype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL
);


ALTER TABLE public.news_articletype OWNER TO postgres;

--
-- Name: news_articletypenew_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_articletypenew_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_articletypenew_id_seq OWNER TO postgres;

--
-- Name: news_articletypenew_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_articletypenew_id_seq OWNED BY public.news_articletype.id;


--
-- Name: news_new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_new (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100),
    article_type_id integer,
    host_id integer NOT NULL
);


ALTER TABLE public.news_new OWNER TO postgres;

--
-- Name: news_new_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_new_id_seq OWNER TO postgres;

--
-- Name: news_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_new_id_seq OWNED BY public.news_new.id;


--
-- Name: news_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    new_id integer NOT NULL
);


ALTER TABLE public.news_photo OWNER TO postgres;

--
-- Name: news_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    new_id integer NOT NULL
);


ALTER TABLE public.news_photo2 OWNER TO postgres;

--
-- Name: news_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_photo2_id_seq OWNER TO postgres;

--
-- Name: news_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_photo2_id_seq OWNED BY public.news_photo2.id;


--
-- Name: news_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_photo_id_seq OWNER TO postgres;

--
-- Name: news_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_photo_id_seq OWNED BY public.news_photo.id;


--
-- Name: nocharges_categoryapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_categoryapp (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_categoryapp OWNER TO postgres;

--
-- Name: nocharges_categoryapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_categoryapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_categoryapp_id_seq OWNER TO postgres;

--
-- Name: nocharges_categoryapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_categoryapp_id_seq OWNED BY public.nocharges_categoryapp.id;


--
-- Name: nocharges_categoryfree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_categoryfree (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_categoryfree OWNER TO postgres;

--
-- Name: nocharges_categoryfree_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_categoryfree_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_categoryfree_id_seq OWNER TO postgres;

--
-- Name: nocharges_categoryfree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_categoryfree_id_seq OWNED BY public.nocharges_categoryfree.id;


--
-- Name: nocharges_categoryos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_categoryos (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_categoryos OWNER TO postgres;

--
-- Name: nocharges_categoryos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_categoryos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_categoryos_id_seq OWNER TO postgres;

--
-- Name: nocharges_categoryos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_categoryos_id_seq OWNED BY public.nocharges_categoryos.id;


--
-- Name: nocharges_developer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_developer (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_developer OWNER TO postgres;

--
-- Name: nocharges_developer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_developer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_developer_id_seq OWNER TO postgres;

--
-- Name: nocharges_developer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_developer_id_seq OWNED BY public.nocharges_developer.id;


--
-- Name: nocharges_distribution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_distribution (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_distribution OWNER TO postgres;

--
-- Name: nocharges_distribution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_distribution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_distribution_id_seq OWNER TO postgres;

--
-- Name: nocharges_distribution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_distribution_id_seq OWNED BY public.nocharges_distribution.id;


--
-- Name: nocharges_domain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_domain (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_domain OWNER TO postgres;

--
-- Name: nocharges_domain_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_domain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_domain_id_seq OWNER TO postgres;

--
-- Name: nocharges_domain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_domain_id_seq OWNED BY public.nocharges_domain.id;


--
-- Name: nocharges_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id bigint NOT NULL
);


ALTER TABLE public.nocharges_image OWNER TO postgres;

--
-- Name: nocharges_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image_id_seq OWNER TO postgres;

--
-- Name: nocharges_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image_id_seq OWNED BY public.nocharges_image.id;


--
-- Name: nocharges_nocharge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_nocharge (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(80),
    overview character varying(240),
    content text,
    video character varying(140),
    poster_path character varying(100),
    category_app_id bigint,
    category_os_id bigint,
    host_id bigint NOT NULL,
    category_free_id bigint,
    developer_id bigint,
    distribution_id bigint,
    domain_id bigint,
    slug character varying(100) NOT NULL,
    promo_end_date timestamp with time zone
);


ALTER TABLE public.nocharges_nocharge OWNER TO postgres;

--
-- Name: nocharges_nocharge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_nocharge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_nocharge_id_seq OWNER TO postgres;

--
-- Name: nocharges_nocharge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_nocharge_id_seq OWNED BY public.nocharges_nocharge.id;


--
-- Name: rest_framework_api_key_apikey; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rest_framework_api_key_apikey (
    id character varying(150) NOT NULL,
    created timestamp with time zone NOT NULL,
    name character varying(50) NOT NULL,
    revoked boolean NOT NULL,
    expiry_date timestamp with time zone,
    hashed_key character varying(150) NOT NULL,
    prefix character varying(8) NOT NULL
);


ALTER TABLE public.rest_framework_api_key_apikey OWNER TO postgres;

--
-- Name: reviews_review; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews_review (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    review text NOT NULL,
    accuracy integer NOT NULL,
    communication integer NOT NULL,
    cleanliness integer NOT NULL,
    location integer NOT NULL,
    check_in integer NOT NULL,
    value integer NOT NULL,
    room_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.reviews_review OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_review_id_seq OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_review_id_seq OWNED BY public.reviews_review.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(200) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data jsonb NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL,
    provider_id character varying(200) NOT NULL,
    settings jsonb NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: tiplists_tiplist_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplist_games (
    id integer NOT NULL,
    tiplist_id integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplist_games OWNER TO postgres;

--
-- Name: tiplists_tiplist_games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplist_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplist_games_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplist_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplist_games_id_seq OWNED BY public.tiplists_tiplist_games.id;


--
-- Name: tiplists_tiplistguide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplistguide (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplistguide OWNER TO postgres;

--
-- Name: tiplists_tiplistguide_guides; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplistguide_guides (
    id integer NOT NULL,
    tiplistguide_id integer NOT NULL,
    guide_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplistguide_guides OWNER TO postgres;

--
-- Name: tiplists_tiplistguide_guides_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplistguide_guides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplistguide_guides_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplistguide_guides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplistguide_guides_id_seq OWNED BY public.tiplists_tiplistguide_guides.id;


--
-- Name: tiplists_tiplistguide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplistguide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplistguide_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplistguide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplistguide_id_seq OWNED BY public.tiplists_tiplistguide.id;


--
-- Name: tiplists_tiplistnew_news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplistnew_news (
    id integer NOT NULL,
    tiplistnew_id integer NOT NULL,
    new_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplistnew_news OWNER TO postgres;

--
-- Name: tiplists_tiplistnew_news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplistnew_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplistnew_news_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplistnew_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplistnew_news_id_seq OWNED BY public.tiplists_tiplistnew_news.id;


--
-- Name: tiplists_tiplisttutorial_tips; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplisttutorial_tips (
);


ALTER TABLE public.tiplists_tiplisttutorial_tips OWNER TO postgres;

--
-- Name: tiplists_tiplisttutorial_tutorials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplisttutorial_tutorials (
    tutorial_id integer NOT NULL,
    tiplisttutorial_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplisttutorial_tutorials OWNER TO postgres;

--
-- Name: tips_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tips_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    tip_id integer NOT NULL
);


ALTER TABLE public.tips_photo OWNER TO postgres;

--
-- Name: tips_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tips_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    tip_id integer NOT NULL
);


ALTER TABLE public.tips_photo2 OWNER TO postgres;

--
-- Name: tips_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tips_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_photo2_id_seq OWNER TO postgres;

--
-- Name: tips_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tips_photo2_id_seq OWNED BY public.tips_photo2.id;


--
-- Name: tips_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tips_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_photo_id_seq OWNER TO postgres;

--
-- Name: tips_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tips_photo_id_seq OWNED BY public.tips_photo.id;


--
-- Name: tips_tip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tips_tip (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(140) NOT NULL,
    caption_title character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    host_id integer NOT NULL,
    tip_type_id integer,
    "imageData" character varying(100)
);


ALTER TABLE public.tips_tip OWNER TO postgres;

--
-- Name: tips_tip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tips_tip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_tip_id_seq OWNER TO postgres;

--
-- Name: tips_tip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tips_tip_id_seq OWNED BY public.tips_tip.id;


--
-- Name: tips_tiptype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tips_tiptype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.tips_tiptype OWNER TO postgres;

--
-- Name: tips_tiptype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tips_tiptype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_tiptype_id_seq OWNER TO postgres;

--
-- Name: tips_tiptype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tips_tiptype_id_seq OWNED BY public.tips_tiptype.id;


--
-- Name: tutorials_articletype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorials_articletype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL
);


ALTER TABLE public.tutorials_articletype OWNER TO postgres;

--
-- Name: tutorials_articletype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorials_articletype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorials_articletype_id_seq OWNER TO postgres;

--
-- Name: tutorials_articletype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorials_articletype_id_seq OWNED BY public.tutorials_articletype.id;


--
-- Name: tutorials_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorials_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    tutorial_id integer NOT NULL
);


ALTER TABLE public.tutorials_photo OWNER TO postgres;

--
-- Name: tutorials_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorials_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    tutorial_id integer NOT NULL
);


ALTER TABLE public.tutorials_photo2 OWNER TO postgres;

--
-- Name: tutorials_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorials_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorials_photo2_id_seq OWNER TO postgres;

--
-- Name: tutorials_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorials_photo2_id_seq OWNED BY public.tutorials_photo2.id;


--
-- Name: tutorials_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorials_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorials_photo_id_seq OWNER TO postgres;

--
-- Name: tutorials_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorials_photo_id_seq OWNED BY public.tutorials_photo.id;


--
-- Name: tutorials_tutorial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorials_tutorial (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100),
    article_type_id integer,
    host_id integer NOT NULL
);


ALTER TABLE public.tutorials_tutorial OWNER TO postgres;

--
-- Name: tutorials_tutorial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorials_tutorial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorials_tutorial_id_seq OWNER TO postgres;

--
-- Name: tutorials_tutorial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorials_tutorial_id_seq OWNED BY public.tutorials_tutorial.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    avatar character varying(100) NOT NULL,
    gender character varying(10) NOT NULL,
    bio text NOT NULL,
    birthdate date,
    language character varying(2) NOT NULL,
    currency character varying(3) NOT NULL,
    superhost boolean NOT NULL,
    email_verified boolean NOT NULL,
    email_secret character varying(20) NOT NULL,
    login_method character varying(50) NOT NULL
);


ALTER TABLE public.users_user OWNER TO postgres;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: announcements_announcement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_announcement ALTER COLUMN id SET DEFAULT nextval('public.announcements_announcement_id_seq'::regclass);


--
-- Name: announcements_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image ALTER COLUMN id SET DEFAULT nextval('public.announcements_image_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: favorites_favoritenorcharge id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge ALTER COLUMN id SET DEFAULT nextval('public.favorites_favoritenorcharge_id_seq'::regclass);


--
-- Name: favorites_favoritenorcharge_nocharges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge_nocharges ALTER COLUMN id SET DEFAULT nextval('public.favorites_favoritenorcharge_nocharges_id_seq'::regclass);


--
-- Name: games_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_game ALTER COLUMN id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games_gametype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_gametype ALTER COLUMN id SET DEFAULT nextval('public.games_gametype_id_seq'::regclass);


--
-- Name: games_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo ALTER COLUMN id SET DEFAULT nextval('public.games_photo_id_seq'::regclass);


--
-- Name: games_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo2 ALTER COLUMN id SET DEFAULT nextval('public.games_photo2_id_seq'::regclass);


--
-- Name: guides_articletype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_articletype ALTER COLUMN id SET DEFAULT nextval('public.guides_articletype_id_seq'::regclass);


--
-- Name: guides_guide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_guide ALTER COLUMN id SET DEFAULT nextval('public.guides_guide_id_seq'::regclass);


--
-- Name: guides_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo ALTER COLUMN id SET DEFAULT nextval('public.guides_photo_id_seq'::regclass);


--
-- Name: guides_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo2 ALTER COLUMN id SET DEFAULT nextval('public.guides_photo2_id_seq'::regclass);


--
-- Name: news_articletype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_articletype ALTER COLUMN id SET DEFAULT nextval('public.news_articletypenew_id_seq'::regclass);


--
-- Name: news_new id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_new ALTER COLUMN id SET DEFAULT nextval('public.news_new_id_seq'::regclass);


--
-- Name: news_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo ALTER COLUMN id SET DEFAULT nextval('public.news_photo_id_seq'::regclass);


--
-- Name: news_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo2 ALTER COLUMN id SET DEFAULT nextval('public.news_photo2_id_seq'::regclass);


--
-- Name: nocharges_categoryapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryapp ALTER COLUMN id SET DEFAULT nextval('public.nocharges_categoryapp_id_seq'::regclass);


--
-- Name: nocharges_categoryfree id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryfree ALTER COLUMN id SET DEFAULT nextval('public.nocharges_categoryfree_id_seq'::regclass);


--
-- Name: nocharges_categoryos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryos ALTER COLUMN id SET DEFAULT nextval('public.nocharges_categoryos_id_seq'::regclass);


--
-- Name: nocharges_developer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_developer ALTER COLUMN id SET DEFAULT nextval('public.nocharges_developer_id_seq'::regclass);


--
-- Name: nocharges_distribution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_distribution ALTER COLUMN id SET DEFAULT nextval('public.nocharges_distribution_id_seq'::regclass);


--
-- Name: nocharges_domain id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_domain ALTER COLUMN id SET DEFAULT nextval('public.nocharges_domain_id_seq'::regclass);


--
-- Name: nocharges_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image_id_seq'::regclass);


--
-- Name: nocharges_nocharge id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge ALTER COLUMN id SET DEFAULT nextval('public.nocharges_nocharge_id_seq'::regclass);


--
-- Name: reviews_review id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews_review ALTER COLUMN id SET DEFAULT nextval('public.reviews_review_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: tiplists_tiplist_games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplist_games ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplist_games_id_seq'::regclass);


--
-- Name: tiplists_tiplistguide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplistguide_id_seq'::regclass);


--
-- Name: tiplists_tiplistguide_guides id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplistguide_guides_id_seq'::regclass);


--
-- Name: tiplists_tiplistnew_news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistnew_news ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplistnew_news_id_seq'::regclass);


--
-- Name: tips_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo ALTER COLUMN id SET DEFAULT nextval('public.tips_photo_id_seq'::regclass);


--
-- Name: tips_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo2 ALTER COLUMN id SET DEFAULT nextval('public.tips_photo2_id_seq'::regclass);


--
-- Name: tips_tip id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tip ALTER COLUMN id SET DEFAULT nextval('public.tips_tip_id_seq'::regclass);


--
-- Name: tips_tiptype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tiptype ALTER COLUMN id SET DEFAULT nextval('public.tips_tiptype_id_seq'::regclass);


--
-- Name: tutorials_articletype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_articletype ALTER COLUMN id SET DEFAULT nextval('public.tutorials_articletype_id_seq'::regclass);


--
-- Name: tutorials_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo ALTER COLUMN id SET DEFAULT nextval('public.tutorials_photo_id_seq'::regclass);


--
-- Name: tutorials_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo2 ALTER COLUMN id SET DEFAULT nextval('public.tutorials_photo2_id_seq'::regclass);


--
-- Name: tutorials_tutorial id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_tutorial ALTER COLUMN id SET DEFAULT nextval('public.tutorials_tutorial_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: announcements_announcement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_announcement (id, created, updated, title, host_id, content, paragraph1, poster_path, poster_path1, promo_end_date, slug, video) FROM stdin;
7	2023-11-09 01:45:51.508779+00	2023-11-09 02:11:06.488663+00	Snapdragon X Elite: Teknologi ARM Menjanjikan Ekosistem Windows Head To Head Dengan Macbook M Series	1	Snapdragon X Elite dirancang dengan teknologi canggih yang memungkinkan peningkatan pe\r\nrforma yang signifikan. Misalnya, Qualcomm menjanjikan peningkatan performa dua kali l\r\nipat dibandingkan dengan chip Intel dan AMD generasi ke-13 yang paling populer. Ini ad\r\nalah hasil dari akuisisi desainer chip Nuvia oleh Qualcomm pada tahun 2021.\r\n\r\nSnapdragon X Elite juga dilengkapi dengan teknologi Snapdragon Seamless yang memungkinkan peran\r\ngkat untuk bekerja sama dan memungkinkan periferal untuk berpindah dari satu platform\r\nke lainnya. Dengan teknologi ini, setiap perangkat akan mengkomunikasikan statusnya ke\r\n perangkat lainnya, termasuk daya baterai, kekuatan Wi-Fi, dan lainnya, ini mirip deng\r\nan teknologi yang dimiliki Macbook M Series.\r\n\r\nMenurut Counterpoint Research, Qualcomm telah membuat kemajuan signifikan dalam hal te\r\nknologi AI dan konektivitas. Snapdragon X Elite memiliki peningkatan performa AI hingg\r\na 18 TOPS dan dukungan untuk Wi-Fi 6 dan 5G. Selain itu, Snapdragon X Elite memiliki p\r\neningkatan performa yang signifikan dibandingkan dengan chip Snapdragon sebelumnya. Da\r\nlam beberapa tes benchmark, Snapdragon X Elite mampu mengungguli chip Intel dan AMD da\r\nlam beberapa kasus.\r\n\r\nNamun, meski Snapdragon X Elite menawarkan peningkatan performa yang signifikan, beber\r\napa ahli berpendapat bahwa Qualcomm mungkin akan menghadapi tantangan dalam memasarkan\r\n produk ini. Salah satu tantangan utama adalah persaingan dengan Intel dan AMD yang su\r\ndah lama berada di pasar dan memiliki basis pengguna yang luas.\r\n\r\nSelain itu, meskipun Qualcomm telah menunjukkan angka performa yang mengesankan, beber\r\napa ahli berpendapat bahwa angka-angka ini perlu diberikan dalam konteks yang lebih lu\r\nas. Misalnya, beberapa ahli menunjukkan bahwa meskipun Snapdragon X Elite mungkin mena\r\nwarkan peningkatan performa dibandingkan dengan chip Intel dan AMD, performa ini mungk\r\nin tidak sebanding dengan chip Apple M3.\r\n\r\nMeski demikian, banyak yang berpendapat bahwa Snapdragon X Elite adalah langkah maju y\r\nang signifikan bagi Qualcomm dan dapat membuka peluang baru bagi perusahaan dalam pasa\r\nr PC.	\N	announcement_images/snapdragonxelite_quQQHms.webp	announcement_images/snapdragonxelite_YRElKj4.webp	2023-11-08 01:12:00+00	snapdragon-x-elite-teknologi-arm-menjanjikan-ekosistem-windows-head-to-head-dengan-macbook-m-series	alsdkadkladj
11	2023-12-23 03:12:23.620417+00	2023-12-23 03:12:23.620441+00	AMD Menguak Ryzen 8040: Laptop Bertenaga AI! 💻🚀	1	*`Catatan: Gambar hanya ilustrasi`*\r\n\r\nBerkat hadirnya NPU XDNA yang ditanam, Ryzen 8040 menjadi penanda kehebatan AMD dalam menghadirkan pengalaman pengolahan AI. Buktinya? AMD meyakinkan kita bahwa kinerja prosesor ini mengalahkan serinya yang sudah hebat, Ryzen 7040, dengan kecepatan 40% lebih cepat!\r\n\r\nInformasi lainnya yang bisa ditemukan bagaimana 'Hawk Point' mampu menjalankan AI chatbot Llama 2 dan model-model image recognition seperti ResNet 50 dan Inception V4 dengan kecepatan dan keakuratan yang mengagumkan. AMD kembali memberikan batasan baru untuk apa yang dianggap mungkin dalam dunia prosesor.\r\n\r\nDalam pengumuman terbaru di [situs resmi AMD](https://www.amd.com/en/newsroom/press-releases/2023-12-6-amd-extends-mobile-pc-leadership-with-amd-ryzen-8.html), mengungkapkan bahwa salah satu bintang dari seri ini adalah Ryzen 9 8945HS. Buat yang suka editing video, prosesor ini menawarkan kecepatan sampai 64% lebih cepat dibandingkan dengan pesaingnya! 🎬💨 Kalau kamu gamer sejati, siap-siap untuk merasakan performa gaming yang nggak kalah keren, dengan peningkatan hingga 77%! 🎮💥.\r\n\r\nDidesain dengan arsitektur AMD "Zen 4", prosesor ini punya delapan inti yang mampu menangani hingga 16 thread sekaligus🔥. Tak hanya itu, grafis Radeon™ berbasis AMD RDNA™ 3 dan sistem AMD XDNA™ untuk AI membuat prosesor ini jadi pilihan utama buat para kreator konten, gamer, dan pengguna mainstream.\r\n\r\nFitur manajemen daya yang canggih membuat baterai tahan lama, cocok banget buat yang suka bekerja di luar ruangan atau sering bawa-bawa laptop. ⚡️🔋\r\nProsesor ini juga punya dukungan memorinya yang canggih, LPDDR5, yang meningkatkan performa sistem secara keseluruhan. Jadi, nggak perlu khawatir buat menjalankan aplikasi atau proyek kreatif.!	\N	announcement_images/2023/12/amd_zen.webp		2023-12-22 15:03:00+00	amd-menguak-ryzen-8040-laptop-bertenaga-ai	undefined
13	2024-01-02 07:07:28.631312+00	2024-01-02 07:10:32.324024+00	Steam Resmi Stop Dukungan Windows 7 dan 8: Akhir dari Era Klasik 💻🚫	1	Pada tanggal 1 Januari 2024, Steam secara resmi menghentikan dukungan untuk sistem operasi Windows 7, Windows 8, dan Windows 8.1. Mulai tanggal tersebut, instalasi Steam Client yang ada pada sistem operasi ini tidak akan menerima pembaruan apa pun, termasuk pembaruan keamanan. Dukungan teknis dari Steam juga tidak akan dapat membantu pengguna terkait masalah pada sistem operasi lama, dan Steam tidak dapat menjamin kelangsungan fungsi Steam pada versi sistem operasi yang tidak lagi didukung.\r\n\r\n### Perlunya Pembaruan ke Versi Windows Terbaru 🔄 \r\nUntuk memastikan kelangsungan operasi Steam dan produk-produk yang dibeli melalui platform ini, pengguna disarankan untuk memperbarui ke versi Windows yang lebih baru. Meskipun diharapkan bahwa Steam Client dan game pada sistem operasi lama ini akan tetap berjalan setelah 1 Januari 2024, tidak ada jaminan kelangsungan fungsionalitas setelah tanggal tersebut.\r\n\r\n### Inti Perubahan: Chrome dan Keamanan Windows 🔒\r\nPerubahan ini diperlukan karena fitur inti di Steam bergantung pada versi tertanam dari Google Chrome, yang tidak lagi berfungsi pada versi Windows lama. Selain itu, versi Steam di masa depan akan membutuhkan pembaruan keamanan dan fitur Windows yang hanya tersedia di Windows 10 ke atas.\r\n\r\n### Pentingnya Menghentikan Dukungan di Windows 7 dan 8 untuk Kita Semua ❗\r\nMengapa Steam menghentikan dukungan di Windows 7 dan 8 begitu penting bagi kita? Pada dasarnya, Windows 7 dan 8 sudah tidak mendapatkan pembaruan keamanan dan dukungan teknis dari Microsoft. Ketika terhubung ke internet, komputer dengan sistem operasi ini rentan terhadap malware dan eksploitasi yang tidak akan diperbaiki. Ini dapat menyebabkan kinerja PC, Steam, dan game menjadi buruk atau crash. Malware juga dapat digunakan untuk mencuri kredensial akun Steam atau layanan lainnya.\r\n\r\n### Mengapa Perlu Diperbarui Secepatnya? ⏰\r\nMicrosoft sudah mengakhiri pembaruan keamanan dan dukungan teknis untuk Windows 7 pada Januari 2020 dan untuk Windows 8.1 pada Januari 2023. Dengan tetap menggunakan sistem operasi lama, kita membuka pintu bagi malware dan risiko keamanan lainnya tanpa perlindungan. Pembaruan ke Windows yang lebih baru tidak hanya meningkatkan keamanan, tetapi juga mendukung fungsionalitas Steam yang diperlukan.\r\n\r\nDengan penghentian dukungan untuk Windows 7 dan 8, Steam mendorong pengguna untuk mengambil langkah proaktif demi keamanan dan kenyamanan dalam pengalaman gaming online. Pembaruan ke Windows 10 bukan hanya tentang menjaga ketersediaan fitur Steam, tetapi juga melibatkan langkah-langkah penting untuk melindungi perangkat dan data pengguna dari ancaman keamanan yang terus berkembang. Jadi, segera perbarui sistem operasi Anda dan nikmati dunia gaming dengan aman dan tanpa hambatan! 🎮🔐\r\n\r\n### Catatan:\r\n1.  [Steam Official Announcement](https://help.steampowered.com/en/faqs/view/4784-4F2B-1321-800A#:~:text=As%20of%20January%201%202024,any%20kind%20including%20security%20updates.) [↩](https://chat.openai.com/c/e38fe046-e38c-4dc1-b097-60e869355d18#user-content-fnref-1%5E) [↩2](https://chat.openai.com/c/e38fe046-e38c-4dc1-b097-60e869355d18#user-content-fnref-1%5E-2)	\N	announcement_images/2024/01/steam_stop_update.webp		2024-01-01 17:10:00+00	steam-resmi-stop-dukungan-windows-7-dan-8-akhir-dari-era-klasik	undefined
\.


--
-- Data for Name: announcements_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add room	7	add_room
26	Can change room	7	change_room
27	Can delete room	7	delete_room
28	Can view room	7	view_room
29	Can add Room Type	8	add_roomtype
30	Can change Room Type	8	change_roomtype
31	Can delete Room Type	8	delete_roomtype
32	Can view Room Type	8	view_roomtype
33	Can add amenity	9	add_amenity
34	Can change amenity	9	change_amenity
35	Can delete amenity	9	delete_amenity
36	Can view amenity	9	view_amenity
37	Can add facility	10	add_facility
38	Can change facility	10	change_facility
39	Can delete facility	10	delete_facility
40	Can view facility	10	view_facility
41	Can add House Rule	11	add_houserule
42	Can change House Rule	11	change_houserule
43	Can delete House Rule	11	delete_houserule
44	Can view House Rule	11	view_houserule
45	Can add photo	12	add_photo
46	Can change photo	12	change_photo
47	Can delete photo	12	delete_photo
48	Can view photo	12	view_photo
49	Can add review	13	add_review
50	Can change review	13	change_review
51	Can delete review	13	delete_review
52	Can view review	13	view_review
53	Can add reservation	14	add_reservation
54	Can change reservation	14	change_reservation
55	Can delete reservation	14	delete_reservation
56	Can view reservation	14	view_reservation
57	Can add Booked Day	15	add_bookedday
58	Can change Booked Day	15	change_bookedday
59	Can delete Booked Day	15	delete_bookedday
60	Can view Booked Day	15	view_bookedday
61	Can add list	16	add_list
62	Can change list	16	change_list
63	Can delete list	16	delete_list
64	Can view list	16	view_list
65	Can add conversation	17	add_conversation
66	Can change conversation	17	change_conversation
67	Can delete conversation	17	delete_conversation
68	Can view conversation	17	view_conversation
69	Can add message	18	add_message
70	Can change message	18	change_message
71	Can delete message	18	delete_message
72	Can view message	18	view_message
100	Can add API key	34	add_apikey
101	Can change API key	34	change_apikey
102	Can delete API key	34	delete_apikey
103	Can view API key	34	view_apikey
104	Can add Game Type	35	add_gametype
105	Can change Game Type	35	change_gametype
106	Can delete Game Type	35	delete_gametype
107	Can view Game Type	35	view_gametype
108	Can add photo1	36	add_photo1
109	Can change photo1	36	change_photo1
110	Can delete photo1	36	delete_photo1
111	Can view photo1	36	view_photo1
112	Can add game	37	add_game
113	Can change game	37	change_game
114	Can delete game	37	delete_game
115	Can view game	37	view_game
116	Can add photo2	38	add_photo2
117	Can change photo2	38	change_photo2
118	Can delete photo2	38	delete_photo2
119	Can view photo2	38	view_photo2
120	Can add photo	39	add_photo
121	Can change photo	39	change_photo
122	Can delete photo	39	delete_photo
123	Can view photo	39	view_photo
124	Can add Tip Type	40	add_tiptype
125	Can change Tip Type	40	change_tiptype
126	Can delete Tip Type	40	delete_tiptype
127	Can view Tip Type	40	view_tiptype
128	Can add tip	41	add_tip
129	Can change tip	41	change_tip
130	Can delete tip	41	delete_tip
131	Can view tip	41	view_tip
132	Can add photo2	42	add_photo2
133	Can change photo2	42	change_photo2
134	Can delete photo2	42	delete_photo2
135	Can view photo2	42	view_photo2
136	Can add photo	43	add_photo
137	Can change photo	43	change_photo
138	Can delete photo	43	delete_photo
139	Can view photo	43	view_photo
140	Can add tip list	44	add_tiplist
141	Can change tip list	44	change_tiplist
142	Can delete tip list	44	delete_tiplist
143	Can view tip list	44	view_tiplist
144	Can add tip list tutorial	45	add_tiplisttutorial
145	Can change tip list tutorial	45	change_tiplisttutorial
146	Can delete tip list tutorial	45	delete_tiplisttutorial
147	Can view tip list tutorial	45	view_tiplisttutorial
148	Can add Article Type	46	add_articletype
149	Can change Article Type	46	change_articletype
150	Can delete Article Type	46	delete_articletype
151	Can view Article Type	46	view_articletype
152	Can add profit	47	add_profit
153	Can change profit	47	change_profit
154	Can delete profit	47	delete_profit
155	Can view profit	47	view_profit
156	Can add photo2	48	add_photo2
157	Can change photo2	48	change_photo2
158	Can delete photo2	48	delete_photo2
159	Can view photo2	48	view_photo2
160	Can add photo	49	add_photo
161	Can change photo	49	change_photo
162	Can delete photo	49	delete_photo
163	Can view photo	49	view_photo
164	Can add free list	50	add_freelist
165	Can change free list	50	change_freelist
166	Can delete free list	50	delete_freelist
167	Can view free list	50	view_freelist
168	Can add tip list profit	51	add_tiplistprofit
169	Can change tip list profit	51	change_tiplistprofit
170	Can delete tip list profit	51	delete_tiplistprofit
171	Can view tip list profit	51	view_tiplistprofit
172	Can add Article Type	52	add_articletype
173	Can change Article Type	52	change_articletype
174	Can delete Article Type	52	delete_articletype
175	Can view Article Type	52	view_articletype
176	Can add photo	53	add_photo
177	Can change photo	53	change_photo
178	Can delete photo	53	delete_photo
179	Can view photo	53	view_photo
180	Can add photo2	54	add_photo2
181	Can change photo2	54	change_photo2
182	Can delete photo2	54	delete_photo2
183	Can view photo2	54	view_photo2
184	Can add tutorial	55	add_tutorial
185	Can change tutorial	55	change_tutorial
186	Can delete tutorial	55	delete_tutorial
187	Can view tutorial	55	view_tutorial
188	Can add photo2	56	add_photo2
189	Can change photo2	56	change_photo2
190	Can delete photo2	56	delete_photo2
191	Can view photo2	56	view_photo2
192	Can add photo	57	add_photo
193	Can change photo	57	change_photo
194	Can delete photo	57	delete_photo
195	Can view photo	57	view_photo
196	Can add new	58	add_new
197	Can change new	58	change_new
198	Can delete new	58	delete_new
199	Can view new	58	view_new
200	Can add Article Type News	59	add_articletypenew
201	Can change Article Type News	59	change_articletypenew
202	Can delete Article Type News	59	delete_articletypenew
203	Can view Article Type News	59	view_articletypenew
204	Can add tip list new	60	add_tiplistnew
205	Can change tip list new	60	change_tiplistnew
206	Can delete tip list new	60	delete_tiplistnew
207	Can view tip list new	60	view_tiplistnew
208	Can add Article Type	61	add_articletype
209	Can change Article Type	61	change_articletype
210	Can delete Article Type	61	delete_articletype
211	Can view Article Type	61	view_articletype
212	Can add guide	62	add_guide
213	Can change guide	62	change_guide
214	Can delete guide	62	delete_guide
215	Can view guide	62	view_guide
216	Can add photo2	63	add_photo2
217	Can change photo2	63	change_photo2
218	Can delete photo2	63	delete_photo2
219	Can view photo2	63	view_photo2
220	Can add photo	64	add_photo
221	Can change photo	64	change_photo
222	Can delete photo	64	delete_photo
223	Can view photo	64	view_photo
224	Can add tip list guide	65	add_tiplistguide
225	Can change tip list guide	65	change_tiplistguide
226	Can delete tip list guide	65	delete_tiplistguide
227	Can view tip list guide	65	view_tiplistguide
228	Can add Article Type	59	add_articletype
229	Can change Article Type	59	change_articletype
230	Can delete Article Type	59	delete_articletype
231	Can view Article Type	59	view_articletype
232	Can add detail	66	add_detail
233	Can change detail	66	change_detail
234	Can delete detail	66	delete_detail
235	Can view detail	66	view_detail
236	Can add comment	67	add_comment
237	Can change comment	67	change_comment
238	Can delete comment	67	delete_comment
239	Can view comment	67	view_comment
240	Can add Category	68	add_category
241	Can change Category	68	change_category
242	Can delete Category	68	delete_category
243	Can view Category	68	view_category
244	Can add Category Free	69	add_categoryfree
245	Can change Category Free	69	change_categoryfree
246	Can delete Category Free	69	delete_categoryfree
247	Can view Category Free	69	view_categoryfree
248	Can add Image6	70	add_image6
249	Can change Image6	70	change_image6
250	Can delete Image6	70	delete_image6
251	Can view Image6	70	view_image6
252	Can add Image10	71	add_image10
253	Can change Image10	71	change_image10
254	Can delete Image10	71	delete_image10
255	Can view Image10	71	view_image10
256	Can add Main Image	72	add_image
257	Can change Main Image	72	change_image
258	Can delete Main Image	72	delete_image
259	Can view Main Image	72	view_image
260	Can add Image9	73	add_image9
261	Can change Image9	73	change_image9
262	Can delete Image9	73	delete_image9
263	Can view Image9	73	view_image9
264	Can add nocharge	74	add_nocharge
265	Can change nocharge	74	change_nocharge
266	Can delete nocharge	74	delete_nocharge
267	Can view nocharge	74	view_nocharge
268	Can add Image7	75	add_image7
269	Can change Image7	75	change_image7
270	Can delete Image7	75	delete_image7
271	Can view Image7	75	view_image7
272	Can add Category App	76	add_categoryapp
273	Can change Category App	76	change_categoryapp
274	Can delete Category App	76	delete_categoryapp
275	Can view Category App	76	view_categoryapp
276	Can add Image4	77	add_image4
277	Can change Image4	77	change_image4
278	Can delete Image4	77	delete_image4
279	Can view Image4	77	view_image4
280	Can add Image1	78	add_image1
281	Can change Image1	78	change_image1
282	Can delete Image1	78	delete_image1
283	Can view Image1	78	view_image1
284	Can add Image3	79	add_image3
285	Can change Image3	79	change_image3
286	Can delete Image3	79	delete_image3
287	Can view Image3	79	view_image3
288	Can add Image5	80	add_image5
289	Can change Image5	80	change_image5
290	Can delete Image5	80	delete_image5
291	Can view Image5	80	view_image5
292	Can add Category OS	81	add_categoryos
293	Can change Category OS	81	change_categoryos
294	Can delete Category OS	81	delete_categoryos
295	Can view Category OS	81	view_categoryos
296	Can add Image2	82	add_image2
297	Can change Image2	82	change_image2
298	Can delete Image2	82	delete_image2
299	Can view Image2	82	view_image2
300	Can add Image8	83	add_image8
301	Can change Image8	83	change_image8
302	Can delete Image8	83	delete_image8
303	Can view Image8	83	view_image8
304	Can add Keywords	84	add_keyword
305	Can change Keywords	84	change_keyword
306	Can delete Keywords	84	delete_keyword
307	Can view Keywords	84	view_keyword
308	Can add Company	85	add_company
309	Can change Company	85	change_company
310	Can delete Company	85	delete_company
311	Can view Company	85	view_company
312	Can add Free from	86	add_freefrom
313	Can change Free from	86	change_freefrom
314	Can delete Free from	86	delete_freefrom
315	Can view Free from	86	view_freefrom
316	Can add Developer	87	add_developer
317	Can change Developer	87	change_developer
318	Can delete Developer	87	delete_developer
319	Can view Developer	87	view_developer
320	Can add Distribution	88	add_distribution
321	Can change Distribution	88	change_distribution
322	Can delete Distribution	88	delete_distribution
323	Can view Distribution	88	view_distribution
324	Can add favorite norcharge	89	add_favoritenorcharge
325	Can change favorite norcharge	89	change_favoritenorcharge
326	Can delete favorite norcharge	89	delete_favoritenorcharge
327	Can view favorite norcharge	89	view_favoritenorcharge
328	Can add Domain	90	add_domain
329	Can change Domain	90	change_domain
330	Can delete Domain	90	delete_domain
331	Can view Domain	90	view_domain
332	Can add announcement	91	add_announcement
333	Can change announcement	91	change_announcement
334	Can delete announcement	91	delete_announcement
335	Can view announcement	91	view_announcement
336	Can add category article	92	add_categoryarticle
337	Can change category article	92	change_categoryarticle
338	Can delete category article	92	delete_categoryarticle
339	Can view category article	92	view_categoryarticle
340	Can add similar article	93	add_similararticle
341	Can change similar article	93	change_similararticle
342	Can delete similar article	93	delete_similararticle
343	Can view similar article	93	view_similararticle
344	Can add recommendation	94	add_recommendation
345	Can change recommendation	94	change_recommendation
346	Can delete recommendation	94	delete_recommendation
347	Can view recommendation	94	view_recommendation
348	Can add category domain	95	add_categorydomain
349	Can change category domain	95	change_categorydomain
350	Can delete category domain	95	delete_categorydomain
351	Can view category domain	95	view_categorydomain
352	Can add Image9	96	add_image9
353	Can change Image9	96	change_image9
354	Can delete Image9	96	delete_image9
355	Can view Image9	96	view_image9
356	Can add Image8	97	add_image8
357	Can change Image8	97	change_image8
358	Can delete Image8	97	delete_image8
359	Can view Image8	97	view_image8
360	Can add Image7	98	add_image7
361	Can change Image7	98	change_image7
362	Can delete Image7	98	delete_image7
363	Can view Image7	98	view_image7
364	Can add Image6	99	add_image6
365	Can change Image6	99	change_image6
366	Can delete Image6	99	delete_image6
367	Can view Image6	99	view_image6
368	Can add Image5	100	add_image5
369	Can change Image5	100	change_image5
370	Can delete Image5	100	delete_image5
371	Can view Image5	100	view_image5
372	Can add Image4	101	add_image4
373	Can change Image4	101	change_image4
374	Can delete Image4	101	delete_image4
375	Can view Image4	101	view_image4
376	Can add Image3	102	add_image3
377	Can change Image3	102	change_image3
378	Can delete Image3	102	delete_image3
379	Can view Image3	102	view_image3
380	Can add Image2	103	add_image2
381	Can change Image2	103	change_image2
382	Can delete Image2	103	delete_image2
383	Can view Image2	103	view_image2
384	Can add Image10	104	add_image10
385	Can change Image10	104	change_image10
386	Can delete Image10	104	delete_image10
387	Can view Image10	104	view_image10
388	Can add Image1	105	add_image1
389	Can change Image1	105	change_image1
390	Can delete Image1	105	delete_image1
391	Can view Image1	105	view_image1
392	Can add Main Image	106	add_image
393	Can change Main Image	106	change_image
394	Can delete Main Image	106	delete_image
395	Can view Main Image	106	view_image
396	Can add Token	107	add_token
397	Can change Token	107	change_token
398	Can delete Token	107	delete_token
399	Can view Token	107	view_token
400	Can add token	108	add_tokenproxy
401	Can change token	108	change_tokenproxy
402	Can delete token	108	delete_tokenproxy
403	Can view token	108	view_tokenproxy
404	Can add site	109	add_site
405	Can change site	109	change_site
406	Can delete site	109	delete_site
407	Can view site	109	view_site
408	Can add email address	110	add_emailaddress
409	Can change email address	110	change_emailaddress
410	Can delete email address	110	delete_emailaddress
411	Can view email address	110	view_emailaddress
412	Can add email confirmation	111	add_emailconfirmation
413	Can change email confirmation	111	change_emailconfirmation
414	Can delete email confirmation	111	delete_emailconfirmation
415	Can view email confirmation	111	view_emailconfirmation
416	Can add social account	112	add_socialaccount
417	Can change social account	112	change_socialaccount
418	Can delete social account	112	delete_socialaccount
419	Can view social account	112	view_socialaccount
420	Can add social application	113	add_socialapp
421	Can change social application	113	change_socialapp
422	Can delete social application	113	delete_socialapp
423	Can view social application	113	view_socialapp
424	Can add social application token	114	add_socialtoken
425	Can change social application token	114	change_socialtoken
426	Can delete social application token	114	delete_socialtoken
427	Can view social application token	114	view_socialtoken
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-12-16 08:21:44.038091+00	1	Amenities1	1	[{"added": {}}]	9	1
2	2021-12-16 08:21:50.607071+00	1	Free wifi	1	[{"added": {}}]	10	1
3	2021-12-16 08:22:00.470083+00	1	No Smoking	1	[{"added": {}}]	11	1
4	2021-12-16 08:22:08.512326+00	1	Hotel	1	[{"added": {}}]	8	1
5	2021-12-17 02:26:04.454637+00	1	Api test room	2	[{"changed": {"fields": ["instant_book"]}}]	7	1
6	2021-12-18 07:14:33.826194+00	3	Ola	3		7	1
7	2021-12-18 07:23:54.06551+00	4	Ola	3		7	1
8	2021-12-18 07:25:53.568713+00	5	Ola	3		7	1
9	2021-12-18 07:54:53.744669+00	6	Ola	3		7	1
10	2021-12-22 01:58:05.960832+00	2	versta	3		6	1
11	2021-12-22 02:21:08.423684+00	3	versta	3		6	1
12	2021-12-22 02:21:42.877042+00	4	versta	3		6	1
13	2021-12-22 04:50:47.230462+00	2	Ola	2	[{"changed": {"fields": ["price"]}}]	7	1
14	2021-12-28 03:24:21.868715+00	xkSAuvHu.pbkdf2_sha256$150000$UYmhTMlCcky1$LTi2dDgd5xaqh92li/BLZyMTZ77HJzEB4cwmkZzSHpc=	my-remote-service	3		34	1
15	2021-12-28 03:24:21.876929+00	7S1THZ6q.pbkdf2_sha256$150000$gS4kLSBqDGzE$7X2lalt9+a2GZSFlOXRuaeIEGZovVpl+hk+e7BcawXU=	my-remote-service	3		34	1
16	2021-12-28 03:24:21.879917+00	A1a56Vm8.pbkdf2_sha256$150000$BykqHaNY39UH$E7U9kapFxEEhc3iz4GXo2U51/gM38t7tHFlPJzBHNuA=	my-remote-service	3		34	1
17	2021-12-28 03:24:49.046054+00	sv6nDcQN.pbkdf2_sha256$150000$7RMRSKo0jRxZ$EoFhMjlBlLAb1CoU31rh7IThjmFoF/2IMAcWXz6wjXM=	firts_mylist	1	[{"added": {}}]	34	1
18	2021-12-28 03:31:36.990413+00	VLnBmfOD.pbkdf2_sha256$150000$f7cVwGWiOZMW$+sGfOwwn8pAjoqEHTXS1kFXxwGq0rqkHd7gJuaoamWo=	my-remote-service	3		34	1
19	2022-01-10 08:07:39.779902+00	1	Adventure	1	[{"added": {}}]	35	1
20	2022-01-10 08:13:48.590642+00	2	Watch Notion	1	[{"added": {}}]	37	1
21	2022-01-10 08:24:10.567833+00	3	Watch Norhem	1	[{"added": {}}]	37	1
22	2022-01-10 08:28:08.942893+00	4	Watch Norhem	1	[{"added": {}}]	37	1
23	2022-01-10 08:28:39.48529+00	4	Watch Norhem	3		37	1
24	2022-01-10 08:28:39.4886+00	3	Watch Norhem	3		37	1
25	2022-01-10 08:28:39.492024+00	2	Watch Notion	3		37	1
26	2022-01-10 08:29:12.993471+00	5	Legion	1	[{"added": {}}]	37	1
27	2022-01-10 08:32:17.910286+00	6	Assa	1	[{"added": {}}, {"added": {"name": "photo", "object": "File1"}}]	37	1
28	2022-01-10 08:43:39.335046+00	7	Lianm	1	[{"added": {}}]	37	1
29	2022-01-10 09:24:00.284978+00	1	Windows	1	[{"added": {}}]	40	1
30	2022-01-10 09:25:06.625539+00	1	Cara membuat auto	1	[{"added": {}}, {"added": {"name": "photo", "object": "y files"}}]	41	1
31	2022-01-10 14:29:07.752857+00	8	Test	3		37	1
32	2022-01-11 06:51:55.906154+00	12	gdgdffffffffffffffffff	3		37	1
33	2022-01-13 03:26:53.176509+00	1	My Favourites Games Article	3		44	1
34	2022-02-04 09:54:50.247798+00	qogcF0vl.pbkdf2_sha256$150000$eQ9vIxe8Wv4Y$Z85LXsTBvzbl6Zi33D+YlTDBKdOdN09n6S3Z3p2e/Qw=	admin	1	[{"added": {}}]	34	1
35	2022-02-21 04:48:47.213174+00	6	Assa	2	[{"changed": {"fields": ["link_tutorial"]}}]	37	1
36	2022-02-21 04:49:09.523199+00	5	Legion	2	[{"changed": {"fields": ["link_tutorial"]}}]	37	1
37	2022-03-17 03:06:18.273189+00	10	asdadl	3		37	1
38	2022-03-23 04:07:27.165416+00	1	Software	1	[{"added": {}}]	46	1
39	2022-03-23 04:46:22.562382+00	1	gogo	1	[{"added": {}}]	50	1
40	2022-03-24 03:49:17.001187+00	1	Windows	1	[{"added": {}}]	52	1
41	2022-03-24 03:50:59.655312+00	1	My Favourites Tips Article	3		45	1
42	2022-03-24 04:19:32.127011+00	1	My Favourites Tips Article	3		45	1
43	2022-03-24 04:31:08.196148+00	1	My Favourites Tips Article	3		45	1
44	2022-03-24 04:31:10.154252+00	1	My Favourites Tips Article	3		45	1
45	2022-03-24 04:31:11.782567+00	1	My Favourites Tips Article	3		45	1
46	2022-03-24 04:31:18.608879+00	1	My Favourites Tips Article	3		45	1
47	2022-03-24 04:32:57.982265+00	1	My Favourites Tips Article	3		45	1
48	2022-03-24 04:45:17.573717+00	1	Test Tutorial Make	3		55	1
49	2022-03-24 14:16:49.520365+00	1	FreeF	1	[{"added": {}}]	59	1
50	2022-03-24 14:51:23.031304+00	1	Free Data	3		58	1
51	2022-03-25 02:11:58.667073+00	1	YugiOh Duel Deck	1	[{"added": {}}]	61	1
52	2022-03-26 02:09:17.846804+00	3	Free3	3		47	1
53	2022-08-08 04:06:07.165822+00	2	Arcade	1	[{"added": {}}]	35	1
54	2022-08-10 02:37:59.254841+00	3	caption action	1	[{"added": {}}]	35	1
55	2022-08-10 02:39:53.888946+00	3	caption action	3		35	1
56	2022-08-10 14:46:09.885228+00	4	Action	1	[{"added": {}}]	35	1
57	2022-08-10 14:46:13.626251+00	4	Action	2	[]	35	1
58	2022-08-11 02:27:17.133839+00	1	Epic Games	1	[{"added": {}}]	68	1
59	2022-08-11 02:32:15.141883+00	7	Madagascar	1	[{"added": {}}, {"added": {"name": "photo", "object": "Landscpae"}}]	47	1
60	2022-08-11 07:39:48.450327+00	8	test	1	[{"added": {}}]	47	1
61	2022-08-11 07:40:22.129329+00	8	test	3		47	1
62	2022-08-12 02:00:20.517443+00	7	Madagascar	3		47	1
63	2022-08-12 02:01:34.13534+00	9	Mulaid	1	[{"added": {}}, {"added": {"name": "photo", "object": "jamesweb"}}, {"added": {"name": "photo", "object": "amazonian"}}]	47	1
64	2022-08-12 02:20:15.36051+00	9	Mulaid	3		47	1
65	2022-08-12 02:21:03.237091+00	11	ti lemo	1	[{"added": {}}, {"added": {"name": "Photo 1", "object": "cap"}}, {"added": {"name": "Photo 1", "object": "nugu"}}]	47	1
66	2022-08-12 03:23:43.295314+00	1	Grapich	1	[{"added": {}}]	76	1
67	2022-08-12 03:23:56.398323+00	1	Game	1	[{"added": {}}]	69	1
68	2022-08-12 03:24:14.493626+00	1	Windows	1	[{"added": {}}]	81	1
69	2022-08-12 03:24:30.628504+00	1	tutorial	1	[{"added": {}}]	84	1
70	2022-08-12 03:24:41.120589+00	2	figma	1	[{"added": {}}]	84	1
71	2022-08-12 03:54:30.247599+00	1	Title	1	[{"added": {}}, {"added": {"name": "Main Image", "object": "sdfsdf"}}, {"added": {"name": "Main Image", "object": "ghghgh"}}]	74	1
72	2022-08-12 05:07:36.874021+00	2	sdfs	1	[{"added": {}}]	74	1
73	2022-08-12 05:07:48.425478+00	2	sdfs	3		74	1
74	2022-08-12 15:12:34.417737+00	1	My fav	1	[{"added": {}}]	89	1
75	2022-08-12 15:12:42.688205+00	1	My fav	2	[{"changed": {"fields": ["nocharges"]}}]	89	1
76	2022-08-13 06:43:57.977245+00	1	Free	1	[{"added": {}}]	90	1
77	2022-08-13 06:44:04.341417+00	2	Latest	1	[{"added": {}}]	90	1
78	2022-08-13 06:44:15.142155+00	3	Tutorial	1	[{"added": {}}]	90	1
79	2022-08-13 06:45:15.843277+00	1	Title	2	[{"changed": {"fields": ["domain"]}}]	74	1
80	2022-08-13 06:48:34.92622+00	3	Tutorial membuat linux for all	1	[{"added": {}}]	74	1
81	2022-08-18 02:49:41.562491+00	4	tutori2	1	[{"added": {}}]	74	1
82	2022-08-18 02:50:01.787155+00	5	tut3	1	[{"added": {}}]	74	1
83	2022-08-18 02:50:33.826503+00	6	tu4	1	[{"added": {}}]	74	1
84	2022-08-21 09:35:19.087488+00	1	Epic Games	1	[{"added": {}}]	87	1
85	2022-08-21 09:35:38.118399+00	6	tu4	2	[{"changed": {"fields": ["developer"]}}]	74	1
86	2022-08-21 09:37:09.58336+00	2	Activision	1	[{"added": {}}]	87	1
87	2022-08-21 09:37:24.721349+00	6	tu4	2	[{"changed": {"fields": ["developer"]}}]	74	1
88	2022-08-21 09:37:36.376267+00	1	Epic	1	[{"added": {}}]	88	1
89	2022-08-21 09:37:46.631817+00	1	Epic Games	2	[{"changed": {"fields": ["title"]}}]	88	1
90	2022-08-21 09:37:58.045183+00	1	Title	2	[{"changed": {"fields": ["developer", "distribution"]}}]	74	1
91	2022-08-23 04:44:46.183081+00	1	Title	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
92	2022-08-23 04:44:59.425313+00	1	Title	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
93	2022-08-23 05:00:39.664414+00	1	Title	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
94	2022-08-23 07:51:06.108066+00	7	micla	1	[{"added": {}}]	74	1
95	2022-08-23 07:52:31.174368+00	8	Tras	1	[{"added": {}}]	74	1
96	2022-08-23 08:29:18.449106+00	8	Tras	2	[{"changed": {"fields": ["domain"]}}]	74	1
97	2022-08-23 08:32:56.628601+00	9	latest3	1	[{"added": {}}]	74	1
98	2022-08-27 01:26:34.967679+00	10	title4	1	[{"added": {}}]	74	1
99	2022-08-27 01:27:42.332078+00	11	ka5	1	[{"added": {}}]	74	1
100	2022-08-27 01:28:05.301338+00	12	ad6	1	[{"added": {}}]	74	1
101	2022-08-27 01:28:41.218927+00	13	ad7	1	[{"added": {}}]	74	1
102	2022-08-27 01:29:19.914661+00	14	as8a	1	[{"added": {}}]	74	1
103	2022-08-27 01:29:42.925144+00	15	dad	1	[{"added": {}}]	74	1
104	2022-08-27 01:31:03.89748+00	16	werwer	1	[{"added": {}}]	74	1
105	2022-08-27 01:31:26.687111+00	17	11wqe	1	[{"added": {}}]	74	1
106	2022-08-27 01:31:48.542327+00	18	12adwas	1	[{"added": {}}]	74	1
107	2022-08-27 01:32:10.463974+00	19	13asd	1	[{"added": {}}]	74	1
108	2022-08-27 01:32:32.478644+00	20	14asdasd	1	[{"added": {}}]	74	1
109	2022-08-27 01:34:38.754098+00	21	15	1	[{"added": {}}]	74	1
110	2022-08-27 01:35:02.132797+00	22	16asda	1	[{"added": {}}]	74	1
111	2022-08-27 01:35:28.069044+00	23	17yuyu	1	[{"added": {}}]	74	1
112	2022-08-27 01:35:53.9587+00	24	18ii	1	[{"added": {}}]	74	1
113	2022-08-27 01:36:23.383563+00	25	19iuaids	1	[{"added": {}}]	74	1
114	2022-08-27 01:36:50.000734+00	26	20sdss	1	[{"added": {}}]	74	1
115	2022-08-27 03:52:19.520742+00	2	Application	1	[{"added": {}}]	69	1
116	2022-08-27 03:52:25.767235+00	18	12adwas	2	[{"changed": {"fields": ["category_free"]}}]	74	1
117	2022-08-27 03:57:42.785564+00	18	12adwas	2	[{"changed": {"fields": ["category_free"]}}]	74	1
118	2022-08-30 03:38:59.488371+00	27	free	1	[{"added": {}}]	74	1
119	2022-08-30 06:58:08.261083+00	27	free	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
120	2022-08-30 07:49:38.348038+00	27	free	2	[]	74	1
121	2022-08-30 07:49:48.113442+00	27	free	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
122	2022-08-30 07:49:58.83145+00	27	free	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
123	2022-08-30 08:12:28.300869+00	27	Rumbleverse	2	[{"changed": {"fields": ["title"]}}]	74	1
124	2022-08-30 08:16:03.419448+00	28	Destiny 2	1	[{"added": {}}]	74	1
125	2022-08-30 08:16:57.849761+00	28	Destiny 2	2	[{"changed": {"fields": ["domain"]}}]	74	1
126	2022-08-30 14:01:30.016762+00	1	‘Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["title", "overview", "poster_path"]}}]	74	1
127	2022-08-30 14:01:49.447235+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["title", "poster_path"]}}]	74	1
128	2022-08-30 14:03:34.292319+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	2	[{"changed": {"fields": ["title", "overview", "poster_path"]}}]	74	1
129	2022-08-30 14:07:31.005232+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["title", "overview", "poster_path"]}}]	74	1
130	2022-08-30 14:17:48.122116+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	1	[{"added": {}}]	74	1
131	2022-12-21 05:07:52.77526+00	30	Look	1	[{"added": {}}]	74	1
132	2022-12-24 09:24:40.082103+00	28	Dapatkan Destiny 2 gratis di Epic Games Store	2	[{"changed": {"fields": ["title"]}}]	74	1
133	2022-12-24 09:28:33.664405+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["title"]}}]	74	1
134	2022-12-24 09:34:22.783295+00	27	Amazon prime bagi gratis Destiny 2	2	[{"changed": {"fields": ["title", "poster_path"]}}]	74	1
135	2022-12-24 09:34:31.221239+00	27	Amazon prime bagi gratis Destiny 2	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
136	2022-12-26 07:38:28.505467+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["title"]}}]	74	1
137	2023-01-12 02:29:21.49437+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
138	2023-01-12 02:39:10.5993+00	30	Look	2	[{"changed": {"fields": ["caption", "overview", "content", "developer", "video", "title1", "content1", "poster_path1", "title2", "content2", "poster_path2", "title3", "content3", "poster_path3", "title4", "content4", "poster_path4", "title5", "content5"]}}]	74	1
139	2023-01-12 02:39:22.1701+00	30	Look	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
140	2023-01-12 02:41:01.397568+00	30	Look	2	[{"changed": {"fields": ["poster_path", "poster_path5", "title6", "content6", "poster_path6", "title7", "content7", "poster_path7", "title8", "content8", "poster_path8", "title9", "content9", "poster_path9", "title10", "content10", "poster_path10"]}}]	74	1
141	2023-01-12 02:56:11.345422+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["title"]}}]	74	1
142	2023-01-16 08:08:40.874533+00	2	Linux	1	[{"added": {}}]	81	1
143	2023-01-16 08:19:44.385718+00	3	Manyo M	1	[{"added": {}}]	87	1
144	2023-01-16 08:19:51.011193+00	4	Lookmu	1	[{"added": {}}]	87	1
145	2023-01-16 08:20:00.382318+00	5	Maspin	1	[{"added": {}}]	87	1
146	2023-02-15 04:03:05.039123+00	1	Maintenace membutuhkan 3 jam	1	[{"added": {}}]	91	1
147	2023-02-23 07:06:33.291353+00	31	cucung	1	[{"added": {}}]	74	1
148	2023-02-23 08:05:15.806618+00	32	lalabo	1	[{"added": {}}]	74	1
149	2023-02-24 03:26:50.751398+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["keywords"]}}]	74	1
150	2023-02-24 03:28:49.384482+00	32	lalabo	3		74	1
151	2023-02-24 03:28:49.387597+00	31	cucung	3		74	1
152	2023-02-24 03:33:42.823812+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["keywords"]}}]	74	1
218	2023-02-27 09:36:08.094855+00	37	macanpon	1	[{"added": {}}]	74	1
219	2023-02-27 09:37:03.879744+00	38	micanpon	1	[{"added": {}}]	74	1
153	2023-02-24 07:23:26.707028+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["domain", "developer", "distribution", "category_os", "category_app", "category_free"]}}]	74	1
154	2023-02-24 07:25:23.404658+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["developer", "distribution", "category_os", "category_app", "category_free", "keywords"]}}]	74	1
155	2023-02-24 08:14:47.047883+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["keywords"]}}]	74	1
156	2023-02-24 08:18:39.530254+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["keywords"]}}]	74	1
157	2023-02-24 08:30:17.241604+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	2	[{"changed": {"fields": ["keywords"]}}]	74	1
158	2023-02-24 08:31:50.988382+00	3	game	1	[{"added": {}}]	84	1
159	2023-02-24 08:31:55.95412+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["keywords"]}}]	74	1
160	2023-02-24 08:32:17.001177+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["domain", "category_free"]}}]	74	1
161	2023-02-24 08:44:32.761983+00	6	tu4	2	[{"changed": {"fields": ["keywords"]}}]	74	1
162	2023-02-24 08:51:13.339883+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["keywords"]}}]	74	1
163	2023-02-24 08:51:48.942769+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["keywords"]}}]	74	1
164	2023-02-24 08:52:05.732721+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["keywords"]}}]	74	1
165	2023-02-24 08:52:14.627596+00	26	20sdss	2	[{"changed": {"fields": ["keywords"]}}]	74	1
166	2023-02-24 08:52:30.388076+00	25	19iuaids	2	[{"changed": {"fields": ["keywords"]}}]	74	1
167	2023-02-24 08:52:36.535425+00	24	18ii	2	[{"changed": {"fields": ["keywords"]}}]	74	1
168	2023-02-24 08:52:41.968184+00	23	17yuyu	2	[{"changed": {"fields": ["keywords"]}}]	74	1
169	2023-02-24 08:52:48.123159+00	22	16asda	2	[{"changed": {"fields": ["keywords"]}}]	74	1
170	2023-02-24 08:52:53.197243+00	21	15	2	[{"changed": {"fields": ["keywords"]}}]	74	1
171	2023-02-24 08:52:58.511855+00	20	14asdasd	2	[{"changed": {"fields": ["keywords"]}}]	74	1
172	2023-02-24 08:53:03.83073+00	19	13asd	2	[{"changed": {"fields": ["keywords"]}}]	74	1
173	2023-02-24 08:53:09.648918+00	18	12adwas	2	[{"changed": {"fields": ["keywords"]}}]	74	1
174	2023-02-24 08:53:14.261065+00	17	11wqe	2	[{"changed": {"fields": ["keywords"]}}]	74	1
175	2023-02-24 08:53:18.875992+00	16	werwer	2	[{"changed": {"fields": ["keywords"]}}]	74	1
176	2023-02-24 08:53:23.312354+00	15	dad	2	[{"changed": {"fields": ["keywords"]}}]	74	1
177	2023-02-24 08:53:35.001784+00	14	as8a	2	[{"changed": {"fields": ["keywords"]}}]	74	1
178	2023-02-24 08:53:40.429649+00	13	ad7	2	[{"changed": {"fields": ["keywords"]}}]	74	1
179	2023-02-24 08:53:47.750264+00	12	ad6	2	[{"changed": {"fields": ["keywords"]}}]	74	1
180	2023-02-24 08:53:53.032248+00	11	ka5	2	[{"changed": {"fields": ["keywords"]}}]	74	1
181	2023-02-24 08:53:57.480267+00	10	title4	2	[{"changed": {"fields": ["keywords"]}}]	74	1
182	2023-02-24 08:54:07.629583+00	9	latest3	2	[{"changed": {"fields": ["keywords"]}}]	74	1
183	2023-02-24 08:54:17.683444+00	8	Tras	2	[{"changed": {"fields": ["keywords"]}}]	74	1
184	2023-02-24 08:54:25.640974+00	7	micla	2	[{"changed": {"fields": ["keywords"]}}]	74	1
185	2023-02-24 08:54:34.810191+00	6	tu4	2	[{"changed": {"fields": ["keywords"]}}]	74	1
186	2023-02-24 08:54:40.270483+00	5	tut3	2	[{"changed": {"fields": ["keywords"]}}]	74	1
187	2023-02-24 08:54:50.745681+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["keywords"]}}]	74	1
188	2023-02-24 08:55:00.879786+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["keywords"]}}]	74	1
189	2023-02-24 09:23:37.568311+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	2	[{"changed": {"fields": ["category_free"]}}]	74	1
190	2023-02-24 09:25:36.034582+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["category_free"]}}]	74	1
191	2023-02-25 04:18:00.258271+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
192	2023-02-25 05:25:12.853705+00	33	Linuxkah	1	[{"added": {}}]	74	1
193	2023-02-25 05:26:08.722908+00	33	Linuxkah	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
194	2023-02-25 05:27:21.001186+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[]	74	1
195	2023-02-25 05:28:35.857099+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["category_os"]}}]	74	1
196	2023-02-25 05:30:55.613507+00	34	implementaas	1	[{"added": {}}]	74	1
197	2023-02-25 05:31:28.499506+00	34	implementaas	2	[]	74	1
198	2023-02-25 07:16:07.797053+00	34	implementaas	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
199	2023-02-25 07:56:37.438931+00	35	bangkok	1	[{"added": {}}]	74	1
200	2023-02-25 08:06:12.108376+00	36	lingli	1	[{"added": {}}]	74	1
201	2023-02-27 02:49:39.62445+00	36	lingli	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
202	2023-02-27 02:50:33.950098+00	35	bangkok	3		74	1
203	2023-02-27 02:52:37.695607+00	36	lingli	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
204	2023-02-27 03:03:31.269502+00	36	lingli	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
205	2023-02-27 03:11:48.100646+00	36	lingli	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
206	2023-02-27 07:32:56.1889+00	1	CategoryDomain object (1)	1	[{"added": {}}]	95	1
207	2023-02-27 07:33:09.624881+00	2	CategoryDomain object (2)	1	[{"added": {}}]	95	1
208	2023-02-27 07:37:52.177975+00	1	Nocharge object (30) recommends None	1	[{"added": {}}]	94	1
209	2023-02-27 07:49:56.975151+00	2	Dapatkan Rumbleverse gratis di Epic Games Store recommends None	1	[{"added": {}}]	94	1
210	2023-02-27 07:50:09.003974+00	1	First Version of Vanilla OS is Available to Download recommends None	3		94	1
211	2023-02-27 07:55:15.80894+00	1	OS	1	[{"added": {}}]	93	1
212	2023-02-27 07:55:54.0733+00	1	OS	2	[{"changed": {"fields": ["category_domain"]}}]	93	1
213	2023-02-27 07:56:17.788805+00	2	Dapatkan Rumbleverse gratis di Epic Games Store recommends OS	3		94	1
214	2023-02-27 07:57:00.655876+00	3	First Version of Vanilla OS is Available to Download recommends OS	1	[{"added": {}}]	94	1
215	2023-02-27 08:27:17.886912+00	3	First Version of Vanilla OS is Available to Download recommends similar article	3		94	1
216	2023-02-27 08:48:23.487656+00	4	Gadget recommends How to Add WebP Support to Ubuntu 22.04 LTS	1	[{"added": {}}]	94	1
217	2023-02-27 08:48:37.391837+00	5	Gadget recommends Dapatkan Rumbleverse gratis di Epic Games Store	1	[{"added": {}}]	94	1
220	2023-03-01 02:21:17.756193+00	39	caraka	1	[{"added": {}}]	74	1
221	2023-03-01 02:26:38.291475+00	40	bahama	1	[{"added": {}}]	74	1
222	2023-03-01 02:33:17.733945+00	41	The little whitew	1	[{"added": {}}]	74	1
223	2023-03-01 02:38:05.47425+00	40	bahama	2	[]	74	1
224	2023-03-01 02:39:18.781555+00	42	Tingting	1	[{"added": {}}]	74	1
225	2023-03-01 02:41:48.187156+00	43	nonoasd	1	[{"added": {}}]	74	1
226	2023-03-01 02:53:01.8357+00	44	abs	1	[{"added": {}}]	74	1
227	2023-03-01 02:56:45.932938+00	45	hahaha	1	[{"added": {}}]	74	1
228	2023-03-01 03:02:15.882205+00	46	iiiiii	1	[{"added": {}}]	74	1
229	2023-03-01 03:32:35.544383+00	46	iiiiii	3		74	1
230	2023-03-01 03:32:35.54823+00	45	hahaha	3		74	1
231	2023-03-01 03:32:35.549516+00	44	abs	3		74	1
232	2023-03-01 03:32:35.550815+00	43	nonoasd	3		74	1
233	2023-03-01 03:32:35.552069+00	42	Tingting	3		74	1
234	2023-03-01 03:32:35.553502+00	41	The little whitew	3		74	1
235	2023-03-01 03:32:35.554845+00	40	bahama	3		74	1
236	2023-03-01 03:32:35.556149+00	39	caraka	3		74	1
237	2023-03-01 03:32:35.557324+00	38	micanpon	3		74	1
238	2023-03-01 03:32:35.558515+00	37	macanpon	3		74	1
239	2023-03-01 03:32:35.559588+00	36	lingli	3		74	1
240	2023-03-01 03:32:35.56092+00	34	implementaas	3		74	1
241	2023-03-01 03:32:35.561972+00	33	Linuxkah	3		74	1
242	2023-03-01 04:54:51.134224+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
243	2023-03-01 05:06:11.153739+00	47	Adventure	1	[{"added": {}}]	74	1
244	2023-03-01 05:20:04.944296+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
245	2023-03-01 09:44:19.409559+00	48	Steam OS on WIndows	1	[{"added": {}}]	74	1
246	2023-03-02 02:33:36.058277+00	48	Steam OS on WIndows	2	[{"changed": {"fields": ["poster_path", "poster_path1"]}}]	74	1
247	2023-03-02 02:34:19.303131+00	47	Adventure	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
248	2023-03-02 10:06:45.811843+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["url", "similar_news"]}}]	74	1
249	2023-03-06 05:11:18.488638+00	47	Adventure	2	[{"changed": {"fields": ["url"]}}]	74	1
250	2023-03-09 07:11:33.743943+00	47	Adventure	2	[{"changed": {"fields": ["url", "keywords"]}}]	74	1
251	2023-03-15 02:04:53.565788+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["caption", "url"]}}]	74	1
252	2023-03-15 03:05:23.965728+00	48	Steam OS on WIndows	2	[{"changed": {"fields": ["category_app", "url"]}}]	74	1
253	2023-03-15 03:53:38.27636+00	2	Game	1	[{"added": {}}]	76	1
254	2023-03-15 03:53:42.923646+00	47	Adventure	2	[{"changed": {"fields": ["category_app"]}}]	74	1
255	2023-03-15 03:53:52.814874+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["category_app"]}}]	74	1
256	2023-03-15 03:54:17.878941+00	3	VOD	1	[{"added": {}}]	76	1
257	2023-03-15 03:54:27.443642+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["category_app", "url"]}}]	74	1
258	2023-03-17 13:54:13.920167+00	53	asdasd	3		74	1
259	2023-03-17 13:54:13.927496+00	52	asdasd	3		74	1
260	2023-03-17 13:54:13.92906+00	51	asdasd	3		74	1
261	2023-03-17 13:54:13.936576+00	50	inwebview	3		74	1
262	2023-03-20 09:32:52.413858+00	9	abc@g.com	2	[{"changed": {"fields": ["is_staff", "user_permissions", "gender", "birthdate", "language", "currency"]}}]	6	1
269	2023-03-21 03:51:45.043042+00	48	Steam OS on WIndows	2	[{"changed": {"fields": ["slug"]}}]	74	1
270	2023-03-21 04:25:42.183337+00	30	First Version of Vanilla OS is Available to Download	2	[]	74	1
271	2023-03-21 04:26:25.698815+00	58	this is the bway	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
272	2023-03-21 04:28:05.540033+00	58	this is the bway	2	[]	74	1
273	2023-03-21 04:30:30.926316+00	30	First Version of Vanilla OS is Available to Download	2	[]	74	1
274	2023-03-21 04:50:13.16447+00	61	asdasd	2	[]	74	1
275	2023-03-21 04:50:19.981022+00	61	asdasd	2	[]	74	1
276	2023-03-21 04:50:37.929439+00	61	asdasd	3		74	1
277	2023-03-21 04:50:37.934254+00	60	asdasd	3		74	1
278	2023-03-21 04:50:37.935748+00	59	hakuna	3		74	1
279	2023-03-21 04:50:37.937321+00	58	this is the bway	3		74	1
280	2023-03-21 04:50:37.939277+00	57	askdjalskd	3		74	1
281	2023-03-21 04:50:37.944455+00	56	askdjalskd	3		74	1
282	2023-03-21 04:50:37.946608+00	55	ahs	3		74	1
283	2023-03-21 04:50:37.948675+00	54	halo	3		74	1
284	2023-03-21 04:50:37.950736+00	49	inwebview	3		74	1
285	2023-03-21 04:51:04.574724+00	47	Adventure	2	[]	74	1
286	2023-03-21 04:52:10.865639+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["url", "keywords"]}}]	74	1
287	2023-03-21 04:52:35.251227+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[]	74	1
288	2023-03-21 04:52:43.636885+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[]	74	1
289	2023-03-21 04:53:13.68194+00	26	20sdss	2	[{"changed": {"fields": ["url", "keywords"]}}]	74	1
290	2023-03-21 04:53:27.43735+00	25	19iuaids	2	[{"changed": {"fields": ["url"]}}]	74	1
291	2023-03-21 04:53:35.300254+00	24	18ii	2	[{"changed": {"fields": ["url"]}}]	74	1
292	2023-03-21 04:53:43.171004+00	23	17yuyu	2	[{"changed": {"fields": ["url"]}}]	74	1
293	2023-03-21 04:53:51.815337+00	22	16asda	2	[{"changed": {"fields": ["url"]}}]	74	1
294	2023-03-21 04:54:00.385173+00	21	15	2	[{"changed": {"fields": ["url"]}}]	74	1
295	2023-03-21 04:54:16.622611+00	20	14asdasd	2	[{"changed": {"fields": ["url"]}}]	74	1
296	2023-03-21 04:54:23.31019+00	19	13asd	2	[{"changed": {"fields": ["url"]}}]	74	1
297	2023-03-21 04:54:30.09156+00	18	12adwas	2	[{"changed": {"fields": ["url"]}}]	74	1
298	2023-03-21 04:54:36.971909+00	17	11wqe	2	[{"changed": {"fields": ["url"]}}]	74	1
299	2023-03-21 04:54:44.579756+00	16	werwer	2	[{"changed": {"fields": ["url"]}}]	74	1
300	2023-03-21 04:54:52.917212+00	15	dad	2	[{"changed": {"fields": ["video", "url"]}}]	74	1
301	2023-03-21 04:54:59.740209+00	14	as8a	2	[{"changed": {"fields": ["video", "url"]}}]	74	1
302	2023-03-21 04:55:40.296316+00	13	ad7	2	[{"changed": {"fields": ["video", "poster_path", "url"]}}]	74	1
303	2023-03-21 04:55:51.037283+00	12	ad6	2	[{"changed": {"fields": ["poster_path", "url"]}}]	74	1
304	2023-03-21 04:56:07.279228+00	11	ka5	2	[{"changed": {"fields": ["video", "poster_path", "url"]}}]	74	1
305	2023-03-21 04:56:20.776805+00	10	title4	2	[{"changed": {"fields": ["video", "poster_path", "url"]}}]	74	1
306	2023-03-21 04:56:31.994219+00	9	latest3	2	[{"changed": {"fields": ["category_domain", "distribution", "url"]}}]	74	1
307	2023-03-21 04:57:18.511038+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["url"]}}]	74	1
387	2023-04-03 09:52:44.163638+00	65	tutoriallagi	1	[{"added": {}}]	74	1
308	2023-03-21 04:57:30.265294+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	2	[{"changed": {"fields": ["video", "url"]}}]	74	1
309	2023-03-21 04:57:48.456667+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["category_domain", "video", "url", "similar_news"]}}]	74	1
310	2023-03-21 04:58:07.902803+00	8	Tras	3		74	1
311	2023-03-21 04:58:07.910526+00	7	micla	3		74	1
312	2023-03-21 04:58:07.912523+00	6	tu4	3		74	1
313	2023-03-21 04:58:07.914618+00	5	tut3	3		74	1
314	2023-03-21 13:52:04.356004+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
315	2023-03-21 13:52:16.832565+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
316	2023-03-22 06:26:14.376958+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
317	2023-03-22 06:26:38.558759+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
318	2023-03-22 08:13:08.38954+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
319	2023-03-22 08:13:23.064603+00	47	Adventure	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
320	2023-03-22 08:14:01.119854+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
321	2023-03-22 08:25:56.016592+00	47	Adventure	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
322	2023-03-22 08:44:08.951637+00	62	asdasd	1	[{"added": {}}]	74	1
323	2023-03-22 08:46:16.092333+00	62	asdasd	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
324	2023-03-22 09:14:28.581753+00	47	Adventure	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
325	2023-03-25 07:02:47.31394+00	4	Artificial Intelligence	1	[{"added": {}}]	76	1
326	2023-03-25 07:03:28.222545+00	5	Gratis	1	[{"added": {}}]	76	1
327	2023-03-25 07:03:46.638274+00	5	Free	2	[{"changed": {"fields": ["title"]}}]	76	1
328	2023-03-25 07:04:11.317768+00	5	Free	3		76	1
329	2023-03-25 07:10:04.919971+00	63	GitHub Perkenalkan CoPilot X Dengan Dukungan GPT4 OpenAI	1	[{"added": {}}]	74	1
330	2023-03-25 07:52:05.404141+00	2	Gratis	2	[{"changed": {"fields": ["title"]}}]	76	1
331	2023-03-28 03:26:19.871359+00	47	Adventure steam	2	[{"changed": {"fields": ["title"]}}]	74	1
332	2023-04-01 04:07:19.849169+00	64	Coba	1	[{"added": {}}]	74	1
333	2023-04-03 03:38:16.949204+00	6	Development	1	[{"added": {}}]	76	1
334	2023-04-03 03:38:41.042065+00	7	Antivirus dan Keamanan	1	[{"added": {}}]	76	1
335	2023-04-03 03:40:34.154295+00	8	Operating System	1	[{"added": {}}]	76	1
336	2023-04-03 03:40:45.814852+00	8	Operating System	2	[]	76	1
337	2023-04-03 03:41:19.534786+00	9	Internet & Network	1	[{"added": {}}]	76	1
338	2023-04-03 03:42:23.62501+00	10	Grapich Design	1	[{"added": {}}]	76	1
339	2023-04-03 03:42:33.51518+00	11	Office	1	[{"added": {}}]	76	1
340	2023-04-03 03:43:02.550736+00	12	Virtualization	1	[{"added": {}}]	76	1
341	2023-04-03 03:43:41.433951+00	13	Multimedia	1	[{"added": {}}]	76	1
342	2023-04-03 03:43:51.803689+00	14	Messaging	1	[{"added": {}}]	76	1
343	2023-04-03 03:44:27.67875+00	15	System Utility	1	[{"added": {}}]	76	1
344	2023-04-03 03:44:39.190821+00	16	Backup and Restore	1	[{"added": {}}]	76	1
345	2023-04-03 03:45:19.517518+00	17	File and Document Management	1	[{"added": {}}]	76	1
346	2023-04-03 03:45:33.036391+00	18	Personalize	1	[{"added": {}}]	76	1
347	2023-04-03 03:45:59.054832+00	19	CAD & 3D Design	1	[{"added": {}}]	76	1
348	2023-04-03 03:46:58.831888+00	20	Scheduling and Reminders	1	[{"added": {}}]	76	1
349	2023-04-03 03:47:17.770291+00	21	Database System	1	[{"added": {}}]	76	1
350	2023-04-03 03:47:40.838025+00	22	Application Testing	1	[{"added": {}}]	76	1
351	2023-04-03 03:48:03.253877+00	23	System Administration	1	[{"added": {}}]	76	1
352	2023-04-03 03:48:22.41282+00	24	Video Editing	1	[{"added": {}}]	76	1
353	2023-04-03 03:49:28.946481+00	25	Sound Processor	1	[{"added": {}}]	76	1
354	2023-04-03 03:50:04.372468+00	26	Software	1	[{"added": {}}]	76	1
355	2023-04-03 03:50:29.294379+00	27	Password Management	1	[{"added": {}}]	76	1
356	2023-04-03 03:50:53.940837+00	28	Distance learning	1	[{"added": {}}]	76	1
357	2023-04-03 03:51:39.197513+00	29	Analysis Data	1	[{"added": {}}]	76	1
358	2023-04-03 03:52:17.416501+00	30	Virtual Office	1	[{"added": {}}]	76	1
359	2023-04-03 03:53:08.966464+00	31	Debugging and Profiling Tools	1	[{"added": {}}]	76	1
360	2023-04-03 03:53:19.940125+00	32	Front-end Development	1	[{"added": {}}]	76	1
361	2023-04-03 03:53:30.084218+00	33	Cloud Service	1	[{"added": {}}]	76	1
362	2023-04-03 03:53:38.951685+00	34	Backend Development	1	[{"added": {}}]	76	1
363	2023-04-03 03:53:49.332889+00	35	VPN Software	1	[{"added": {}}]	76	1
364	2023-04-03 03:53:59.223543+00	36	Digital Content Application	1	[{"added": {}}]	76	1
365	2023-04-03 03:54:09.558792+00	37	E-commerce and Finance	1	[{"added": {}}]	76	1
366	2023-04-03 03:54:25.44772+00	38	Personal Finance Manager	1	[{"added": {}}]	76	1
367	2023-04-03 03:54:33.622817+00	39	Business communication	1	[{"added": {}}]	76	1
368	2023-04-03 03:54:43.103966+00	40	Edit PDF	1	[{"added": {}}]	76	1
369	2023-04-03 03:54:52.128431+00	41	Software Security Applications	1	[{"added": {}}]	76	1
370	2023-04-03 03:55:07.110662+00	42	Group Work Tool	1	[{"added": {}}]	76	1
371	2023-04-03 03:55:15.156897+00	43	Mobile Application Development	1	[{"added": {}}]	76	1
372	2023-04-03 03:55:24.036774+00	44	Audio Editor	1	[{"added": {}}]	76	1
373	2023-04-03 03:55:32.736046+00	45	Content Management System	1	[{"added": {}}]	76	1
374	2023-04-03 03:56:19.089271+00	46	Product Analysis	1	[{"added": {}}]	76	1
375	2023-04-03 03:56:40.208264+00	47	Aplikasi Kesehatan	1	[{"added": {}}]	76	1
376	2023-04-03 03:57:31.635113+00	48	Music Streaming Service	1	[{"added": {}}]	76	1
377	2023-04-03 03:57:40.83803+00	49	Collaboration Software	1	[{"added": {}}]	76	1
378	2023-04-03 03:57:50.70457+00	50	Game Development	1	[{"added": {}}]	76	1
379	2023-04-03 03:58:02.271468+00	51	Network Security Management	1	[{"added": {}}]	76	1
380	2023-04-03 03:58:11.119908+00	52	Big Data Analytics	1	[{"added": {}}]	76	1
381	2023-04-03 03:58:21.800729+00	53	Desktop Application Development	1	[{"added": {}}]	76	1
382	2023-04-03 04:03:05.329536+00	54	Virtual Reality Application	1	[{"added": {}}]	76	1
383	2023-04-03 04:27:14.504317+00	2	Free	2	[{"changed": {"fields": ["title"]}}]	76	1
384	2023-04-03 04:27:57.892207+00	7	Antivirus dan Security	2	[{"changed": {"fields": ["title"]}}]	76	1
385	2023-04-03 04:29:06.686959+00	1	Graphic	2	[{"changed": {"fields": ["title"]}}]	76	1
386	2023-04-03 09:44:24.644508+00	64	Coba	2	[{"changed": {"fields": ["category_os"]}}]	74	1
388	2023-04-03 09:53:31.985536+00	66	asdasdad	1	[{"added": {}}]	74	1
389	2023-04-03 09:54:02.229083+00	67	adsasdasd	1	[{"added": {}}]	74	1
390	2023-04-03 09:54:28.209706+00	68	last test	1	[{"added": {}}]	74	1
391	2023-04-05 03:56:38.061994+00	2	Percayakan keamanan anda kepada tidak ada	1	[{"added": {}}]	91	1
392	2023-04-05 07:47:04.211426+00	3	What's New In GNOME 44	1	[{"added": {}}]	91	1
393	2023-04-05 07:49:29.657041+00	3	What's New In GNOME 44	2	[{"changed": {"fields": ["poster_path"]}}]	91	1
394	2023-04-10 07:49:16.754766+00	69	lululasudlad	1	[{"added": {}}]	74	1
395	2023-04-13 04:34:04.378414+00	70	Manhun	1	[{"added": {}}]	74	1
396	2023-04-13 04:35:04.339412+00	70	Manhun	2	[{"changed": {"fields": ["domain"]}}]	74	1
397	2023-04-13 04:36:08.784392+00	70	Manhun	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
398	2023-04-13 04:42:21.768509+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["title1", "content1", "title2", "content2"]}}]	74	1
399	2023-04-13 05:21:37.626329+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["category_app"]}}]	74	1
400	2023-04-26 02:27:47.735471+00	3	All	1	[{"added": {}}]	81	1
401	2023-04-26 02:28:16.82981+00	3	All	3		81	1
402	2023-04-26 02:31:17.807116+00	4	Cross-Platform	1	[{"added": {}}]	81	1
403	2023-04-26 02:35:19.42982+00	55	Utilities	1	[{"added": {}}]	76	1
404	2023-04-26 02:55:55.590066+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	1	[{"added": {}}]	74	1
405	2023-04-26 03:21:23.000068+00	72	test	1	[{"added": {}}]	74	1
406	2023-04-26 03:21:31.546843+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
407	2023-04-26 03:21:42.778709+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
408	2023-04-26 03:23:02.737836+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["title1", "content1", "poster_path1"]}}]	74	1
409	2023-04-26 03:44:59.185833+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
410	2023-04-26 03:45:11.304042+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
411	2023-04-26 04:26:34.715186+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
412	2023-04-26 04:39:09.627048+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["content", "title1", "content1"]}}]	74	1
413	2023-04-26 04:42:20.827622+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["title1"]}}]	74	1
414	2023-04-26 04:43:50.767618+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["title1", "content1"]}}]	74	1
415	2023-04-26 04:45:19.795349+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["content1"]}}]	74	1
416	2023-04-26 04:56:18.79612+00	71	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah 	2	[{"changed": {"fields": ["title1", "content1"]}}]	74	1
417	2023-04-26 04:57:40.548726+00	71	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah 	2	[{"changed": {"fields": ["title1"]}}]	74	1
418	2023-04-26 04:59:53.690196+00	71	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah 	2	[{"changed": {"fields": ["title1", "content1"]}}]	74	1
419	2023-04-26 05:09:27.428513+00	71	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah 	2	[{"changed": {"fields": ["content1"]}}]	74	1
420	2023-04-26 05:14:37.605808+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["title1"]}}]	74	1
421	2023-05-01 09:23:52.953667+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	1	[{"added": {}}]	74	1
422	2023-05-01 09:25:13.593327+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["content", "similar_news"]}}]	74	1
423	2023-05-01 09:37:17.486187+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["overview"]}}]	74	1
424	2023-05-01 09:48:36.496259+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["title1", "content1", "title2", "content2"]}}]	74	1
425	2023-05-01 10:19:04.178507+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	1	[{"added": {}}]	74	1
426	2023-05-01 13:27:42.966965+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3"]}}]	74	1
427	2023-05-01 13:43:33.213497+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3", "poster_path3"]}}]	74	1
428	2023-05-01 13:47:37.196202+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3", "poster_path3"]}}]	74	1
429	2023-05-01 13:48:29.664512+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path3"]}}]	74	1
430	2023-05-01 14:03:22.455472+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3", "poster_path4"]}}]	74	1
431	2023-05-01 14:04:40.139254+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3"]}}]	74	1
432	2023-05-01 14:07:38.516271+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3", "content5", "poster_path5"]}}]	74	1
433	2023-05-01 14:36:39.07882+00	75	Tutorial <i>Install Windows Subsytem for Android</i>(WSA) Pada Windows 11	1	[{"added": {}}]	74	1
434	2023-05-01 14:37:36.368658+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["title", "poster_path"]}}]	74	1
435	2023-05-01 14:40:47.381065+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["content"]}}]	74	1
436	2023-05-01 14:52:02.189887+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["title1", "content1"]}}]	74	1
437	2023-05-02 14:29:44.325154+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	1	[{"added": {}}]	74	1
438	2023-05-02 14:36:01.625945+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["similar_news", "title1", "content1", "title2"]}}]	74	1
439	2023-05-02 14:37:27.749334+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["title1"]}}]	74	1
440	2023-05-02 14:41:32.28542+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["content", "domain"]}}]	74	1
441	2023-05-02 14:42:56.21861+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["content", "domain"]}}]	74	1
442	2023-05-02 14:44:26.968012+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["title1"]}}]	74	1
443	2023-05-02 14:59:22.166775+00	77	Stacer: Linux System Optimizer and Monitoring	1	[{"added": {}}]	74	1
444	2023-05-02 15:00:32.270245+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["content", "similar_news"]}}]	74	1
445	2023-05-02 15:17:03.379422+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["overview"]}}]	74	1
446	2023-05-03 00:48:07.436333+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["content"]}}]	74	1
447	2023-05-03 01:00:04.223589+00	6	Warm Lamp Games	1	[{"added": {}}]	87	1
448	2023-05-03 01:00:30.492887+00	2	Prime Gaming	1	[{"added": {}}]	88	1
449	2023-05-03 01:01:09.432693+00	56	Game	1	[{"added": {}}]	76	1
450	2023-05-03 01:10:38.012215+00	78	Dapatkan Beholder 2 Gratis	1	[{"added": {}}]	74	1
451	2023-05-03 01:16:04.884075+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["caption", "overview", "similar_news"]}}]	74	1
452	2023-05-03 01:17:54.699641+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
453	2023-05-03 01:22:29.969902+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["overview", "content"]}}]	74	1
454	2023-05-03 01:22:59.830312+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["caption"]}}]	74	1
455	2023-05-03 04:46:26.894837+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["content", "title1"]}}]	74	1
456	2023-05-03 05:05:24.692647+00	3	Steam	1	[{"added": {}}]	88	1
457	2023-05-03 05:05:30.364512+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["distribution"]}}]	74	1
458	2023-05-03 05:07:41.209446+00	4	Udemy	1	[{"added": {}}]	88	1
459	2023-05-03 05:08:14.287571+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["distribution"]}}]	74	1
460	2023-05-03 05:19:40.088359+00	3	Course	1	[{"added": {}}]	69	1
461	2023-05-03 05:26:06.857164+00	79	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
462	2023-05-03 05:26:30.94743+00	80	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
463	2023-05-03 05:26:45.108407+00	80	Amazon Web Services (AWS) - Zero to Hero	3		74	1
464	2023-05-03 05:26:45.113125+00	79	Amazon Web Services (AWS) - Zero to Hero	3		74	1
465	2023-05-03 05:52:10.751913+00	81	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
466	2023-05-03 05:52:29.03179+00	81	Amazon Web Services (AWS) - Zero to Hero	3		74	1
467	2023-05-03 05:53:15.595588+00	82	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
468	2023-05-03 05:54:59.6473+00	82	Amazon Web Services (AWS) - Zero to Hero	3		74	1
469	2023-05-03 05:55:26.875379+00	83	asdasd	1	[{"added": {}}]	74	1
470	2023-05-03 05:55:45.040982+00	83	asdasd	3		74	1
471	2023-05-03 05:56:25.98628+00	84	qweqweqwe	1	[{"added": {}}]	74	1
472	2023-05-03 05:56:42.380726+00	84	qweqweqwe	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
473	2023-05-03 05:57:17.904286+00	84	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["title", "caption", "overview"]}}]	74	1
474	2023-05-03 05:57:51.167044+00	84	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["developer", "distribution", "category_os", "category_app"]}}]	74	1
475	2023-05-03 05:58:28.402395+00	84	Amazon Web Services (AWS) - Zero to Hero	3		74	1
476	2023-05-03 05:58:50.233096+00	85	sadadasd	1	[{"added": {}}]	74	1
477	2023-05-03 05:59:12.051889+00	85	sadadasd	2	[{"changed": {"fields": ["distribution"]}}]	74	1
478	2023-05-03 05:59:22.666369+00	85	sadadasd	2	[{"changed": {"fields": ["developer"]}}]	74	1
479	2023-05-03 05:59:37.831914+00	85	sadadasd	2	[{"changed": {"fields": ["category_os"]}}]	74	1
480	2023-05-03 06:01:49.325711+00	85	sadadasd	3		74	1
481	2023-05-03 06:13:20.673581+00	86	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
482	2023-05-03 06:14:10.076207+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["caption", "overview", "similar_news"]}}]	74	1
483	2023-05-03 06:23:41.467115+00	72	test	3		74	1
484	2023-05-03 06:23:41.475342+00	70	Manhun	3		74	1
485	2023-05-03 06:23:41.476709+00	69	lululasudlad	3		74	1
486	2023-05-03 06:23:41.478068+00	68	last test	3		74	1
487	2023-05-03 06:23:41.479639+00	67	adsasdasd	3		74	1
488	2023-05-03 06:23:41.48128+00	66	asdasdad	3		74	1
489	2023-05-03 06:23:41.48282+00	65	tutoriallagi	3		74	1
490	2023-05-03 06:23:41.484221+00	64	Coba	3		74	1
491	2023-05-03 06:23:41.485309+00	63	GitHub Perkenalkan CoPilot X Dengan Dukungan GPT4 OpenAI	3		74	1
492	2023-05-03 06:23:41.486485+00	62	asdasd	3		74	1
493	2023-05-03 06:23:41.487615+00	48	Steam OS on WIndows	3		74	1
494	2023-05-03 06:23:41.48869+00	47	Adventure steam	3		74	1
623	2023-07-29 09:30:26.250517+00	104	asdasd	3		74	1
495	2023-05-03 06:23:41.489884+00	30	First Version of Vanilla OS is Available to Download	3		74	1
496	2023-05-03 06:23:41.49093+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	3		74	1
497	2023-05-03 06:23:41.491991+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	3		74	1
498	2023-05-03 06:23:41.493221+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	3		74	1
499	2023-05-03 06:23:41.494642+00	26	20sdss	3		74	1
500	2023-05-03 06:23:41.495986+00	25	19iuaids	3		74	1
501	2023-05-03 06:23:41.497413+00	24	18ii	3		74	1
502	2023-05-03 06:23:41.498904+00	23	17yuyu	3		74	1
503	2023-05-03 06:23:41.500328+00	22	16asda	3		74	1
504	2023-05-03 06:23:41.501575+00	21	15	3		74	1
505	2023-05-03 06:23:41.502816+00	20	14asdasd	3		74	1
506	2023-05-03 06:23:41.50417+00	19	13asd	3		74	1
507	2023-05-03 06:23:41.505334+00	18	12adwas	3		74	1
508	2023-05-03 06:23:41.506649+00	17	11wqe	3		74	1
509	2023-05-03 06:23:41.50792+00	16	werwer	3		74	1
510	2023-05-03 06:23:41.509329+00	15	dad	3		74	1
511	2023-05-03 06:23:41.512934+00	14	as8a	3		74	1
512	2023-05-03 06:23:41.514385+00	13	ad7	3		74	1
513	2023-05-03 06:23:41.515761+00	12	ad6	3		74	1
514	2023-05-03 06:23:41.516961+00	11	ka5	3		74	1
515	2023-05-03 06:23:41.518267+00	10	title4	3		74	1
516	2023-05-03 06:23:41.519861+00	9	latest3	3		74	1
517	2023-05-03 06:23:41.521399+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	3		74	1
518	2023-05-03 06:23:41.523032+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	3		74	1
519	2023-05-03 06:23:41.526189+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	3		74	1
520	2023-05-03 06:27:11.899577+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["category_app", "similar_news"]}}]	74	1
521	2023-05-03 06:27:43.402371+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["category_app", "similar_news"]}}]	74	1
522	2023-05-03 06:45:49.147679+00	87	Breathe dan Poker Club	1	[{"added": {}}]	74	1
523	2023-05-03 06:46:13.04203+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
524	2023-05-03 06:49:33.762597+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["content"]}}]	74	1
525	2023-05-03 06:49:56.365767+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["content"]}}]	74	1
526	2023-05-03 06:51:17.9901+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["content"]}}]	74	1
527	2023-05-03 07:33:14.455624+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	1	[{"added": {}}]	74	1
528	2023-05-03 07:35:24.424496+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	2	[{"changed": {"fields": ["similar_news", "content1"]}}]	74	1
529	2023-05-03 09:15:22.0819+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	1	[{"added": {}}]	74	1
530	2023-05-03 09:15:47.438397+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
531	2023-05-03 09:16:28.38928+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content", "poster_path"]}}]	74	1
532	2023-05-03 09:27:52.91616+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1", "content1", "title2", "content2"]}}]	74	1
533	2023-05-03 09:28:40.793535+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
534	2023-05-03 09:29:03.896384+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
535	2023-05-03 09:30:24.22263+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
536	2023-05-03 09:31:25.061988+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
537	2023-05-03 09:32:03.030781+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
538	2023-05-03 09:33:37.450649+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
539	2023-05-03 09:34:08.41182+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
540	2023-05-03 09:36:22.173337+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content2"]}}]	74	1
541	2023-05-03 14:00:35.241861+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
542	2023-05-03 14:01:01.720129+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
543	2023-05-03 14:21:25.928539+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["video"]}}]	74	1
544	2023-05-03 14:32:01.172775+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content10"]}}]	74	1
545	2023-05-03 14:34:36.321246+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content10"]}}]	74	1
546	2023-05-03 14:44:03.272461+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["category_os"]}}]	74	1
547	2023-05-03 14:56:05.273528+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["content"]}}]	74	1
548	2023-05-03 14:57:33.93254+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["caption", "overview"]}}]	74	1
549	2023-05-04 09:42:24.448682+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
550	2023-05-04 09:44:32.390639+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
551	2023-05-04 09:45:05.099905+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
552	2023-05-04 09:45:44.641803+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
553	2023-05-04 09:46:24.735301+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
554	2023-05-04 09:53:00.837357+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
555	2023-05-04 09:55:46.503337+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
556	2023-05-04 10:11:29.734332+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
624	2023-07-29 09:30:26.252418+00	103	lalaskdlasd	3		74	1
557	2023-05-04 10:14:30.674084+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
558	2023-05-09 08:31:34.206599+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
559	2023-05-09 08:37:36.010715+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
560	2023-05-09 08:39:33.448488+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
561	2023-05-09 08:41:35.096369+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
562	2023-05-09 09:15:30.346559+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
563	2023-05-09 09:16:16.613276+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["similar_news", "title1"]}}]	74	1
564	2023-05-09 09:18:06.868939+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
565	2023-05-09 09:20:34.020693+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
566	2023-05-09 09:22:35.226529+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
567	2023-05-09 09:24:23.766553+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
568	2023-05-09 09:25:14.442047+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
569	2023-05-09 09:26:59.264464+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
570	2023-05-09 09:28:48.155417+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
571	2023-05-09 09:34:37.378965+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["similar_news", "poster_path4"]}}]	74	1
572	2023-05-09 09:35:08.202211+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path5"]}}]	74	1
573	2023-05-09 09:35:32.697186+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path5"]}}]	74	1
574	2023-05-09 09:40:56.431874+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path6"]}}]	74	1
575	2023-05-09 09:49:19.867573+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path4"]}}]	74	1
576	2023-05-09 09:50:30.707604+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title5", "content5", "poster_path5", "poster_path6"]}}]	74	1
577	2023-05-09 09:52:01.259027+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title5", "content5", "poster_path5"]}}]	74	1
578	2023-05-09 10:06:29.314279+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
579	2023-05-09 10:08:20.998359+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
580	2023-05-09 10:10:48.565793+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title4", "content4"]}}]	74	1
581	2023-05-09 13:34:11.296372+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title5"]}}]	74	1
582	2023-05-10 07:29:05.66154+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["content1", "poster_path1"]}}]	74	1
583	2023-05-10 08:46:33.57069+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3"]}}]	74	1
584	2023-05-10 15:04:06.802545+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title4", "content4", "title5"]}}]	74	1
585	2023-05-11 02:39:59.719453+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content", "poster_path1"]}}]	74	1
586	2023-06-22 07:10:57.204622+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
587	2023-07-08 07:44:48.890073+00	93	Cakalang	1	[{"added": {}}]	74	1
588	2023-07-08 08:10:47.677326+00	94	Piastry	1	[{"added": {}}]	74	1
589	2023-07-08 08:30:47.144981+00	94	Piastry	3		74	1
590	2023-07-08 08:39:16.415607+00	93	Cakalang	3		74	1
591	2023-07-10 04:18:29.378626+00	95	Thinkboi	1	[{"added": {}}]	74	1
592	2023-07-10 07:35:44.039556+00	95	Thinkboi	3		74	1
593	2023-07-11 02:24:37.811517+00	96	NOicih	1	[{"added": {}}]	74	1
594	2023-07-11 02:32:26.71934+00	97	Lokim	1	[{"added": {}}]	74	1
595	2023-07-11 02:42:04.710371+00	97	Lokim	3		74	1
596	2023-07-11 02:53:24.789621+00	98	Mikasa	1	[{"added": {}}]	74	1
597	2023-07-11 02:56:23.088529+00	99	Makalibu	1	[{"added": {}}]	74	1
598	2023-07-11 03:13:59.762464+00	98	Mikasa	3		74	1
599	2023-07-11 03:26:48.45996+00	99	Makalibu	3		74	1
600	2023-07-11 03:26:48.467455+00	96	NOicih	3		74	1
601	2023-07-19 09:49:25.497751+00	1	235a19927852bbb026c1a27ab110adc7070ade59	3		108	1
602	2023-07-20 08:57:36.908307+00	100	Gadolga	1	[{"added": {}}]	74	1
603	2023-07-20 09:37:44.230831+00	1	minka@gmail.com	2	[{"changed": {"fields": ["verified"]}}]	110	1
604	2023-07-20 09:51:17.252615+00	102	Jakalang	3		74	1
605	2023-07-20 09:51:17.255943+00	101	Makarena	3		74	1
606	2023-07-20 09:51:17.257489+00	100	Gadolga	3		74	1
607	2023-07-29 09:18:36.306182+00	114	Maladin	1	[{"added": {}}]	74	1
608	2023-07-29 09:30:26.218305+00	119	Oo	3		74	1
609	2023-07-29 09:30:26.223194+00	118	Tikabo	3		74	1
610	2023-07-29 09:30:26.225056+00	117	Kaka	3		74	1
611	2023-07-29 09:30:26.227208+00	116	Ajeng	3		74	1
612	2023-07-29 09:30:26.229563+00	115	Baganu	3		74	1
613	2023-07-29 09:30:26.23162+00	114	Maladin	3		74	1
614	2023-07-29 09:30:26.233566+00	113	Aladin	3		74	1
615	2023-07-29 09:30:26.235447+00	112	Obashken	3		74	1
616	2023-07-29 09:30:26.237511+00	111	nanang	3		74	1
617	2023-07-29 09:30:26.239174+00	110	nano	3		74	1
618	2023-07-29 09:30:26.240833+00	109	Mangekyu	3		74	1
619	2023-07-29 09:30:26.242494+00	108	Shituku	3		74	1
620	2023-07-29 09:30:26.244679+00	107	Nomaden	3		74	1
621	2023-07-29 09:30:26.246754+00	106	lalaskdlasd	3		74	1
622	2023-07-29 09:30:26.248747+00	105	asda	3		74	1
625	2023-10-20 01:57:36.387341+00	120	Best Practices High-Performing Menggunakan Kotlin	1	[{"added": {}}]	74	1
626	2023-10-20 01:59:23.815043+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
627	2023-10-20 01:59:40.387235+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
628	2023-10-20 02:04:48.884155+00	87	Breathe dan Poker Club	3		74	1
629	2023-10-20 02:06:00.316337+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
630	2023-10-20 02:06:15.692991+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
631	2023-10-20 03:18:10.039825+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["content"]}}]	74	1
632	2023-10-20 03:25:07.283643+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["title1"]}}]	74	1
633	2023-10-20 03:28:43.099584+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["title1"]}}]	74	1
634	2023-10-24 02:18:39.387944+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
635	2023-10-24 02:18:54.684695+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
636	2023-10-24 02:28:58.536016+00	121	The Evil Within	1	[{"added": {}}]	74	1
637	2023-10-24 02:38:26.942867+00	121	The Evil Within	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
638	2023-10-24 03:11:02.913077+00	122	iOS 17.1 Diperkirakan Akan Diluncurkan Besok	1	[{"added": {}}]	74	1
639	2023-10-24 03:11:08.667679+00	122	iOS 17.1 Diperkirakan Akan Diluncurkan Besok	2	[]	74	1
640	2023-10-24 03:45:14.49772+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["title1"]}}]	74	1
641	2023-10-24 03:48:01.395726+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["title1"]}}]	74	1
642	2023-10-24 03:54:10.343964+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["title1"]}}]	74	1
643	2023-10-24 07:11:41.515986+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["title1"]}}]	74	1
644	2023-10-24 07:14:00.094702+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[]	74	1
645	2023-10-24 07:27:23.561858+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["category_free"]}}]	74	1
646	2023-10-24 07:29:43.714212+00	4	AI	1	[{"added": {}}]	69	1
647	2023-10-24 07:29:49.570342+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["category_free"]}}]	74	1
648	2023-10-24 07:30:11.774619+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	2	[{"changed": {"fields": ["category_free"]}}]	74	1
649	2023-10-24 07:36:56.681323+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["title1"]}}]	74	1
650	2023-10-24 07:40:12.599037+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["title1"]}}]	74	1
651	2023-10-24 07:49:36.037556+00	3	What's New In GNOME 45	2	[{"changed": {"fields": ["title", "poster_path"]}}]	91	1
652	2023-10-24 07:49:53.671296+00	3	What's New In GNOME 45	2	[{"changed": {"fields": ["poster_path"]}}]	91	1
653	2023-10-24 07:57:40.626289+00	2	Luar Biasa! Prosesor Desktop Seri AMD Threadripper 7000	2	[{"changed": {"fields": ["title", "content", "poster_path"]}}]	91	1
654	2023-10-25 03:38:25.163941+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
655	2023-10-25 03:38:33.329201+00	78	Dapatkan Beholder 2 Gratis	2	[]	74	1
656	2023-10-25 04:06:10.954849+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[]	74	1
657	2023-10-25 04:18:48.507916+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
658	2023-10-25 04:18:57.135007+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
659	2023-10-25 04:19:10.036091+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
660	2023-10-25 04:19:20.267786+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
661	2023-10-25 04:19:37.272154+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
662	2023-10-25 04:19:44.419204+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
663	2023-10-25 04:20:02.311402+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
664	2023-10-25 04:20:09.897388+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
665	2023-10-25 04:22:24.190847+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
666	2023-10-25 04:22:31.87831+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
667	2023-10-25 04:24:15.440961+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
668	2023-10-25 04:24:21.380252+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
669	2023-10-25 04:24:58.709175+00	89	Meningkatkan Produktivitas dengan AI Code Translator	2	[{"changed": {"fields": ["title"]}}]	74	1
670	2023-10-25 04:25:49.81436+00	89	AI Code Translator	2	[{"changed": {"fields": ["title"]}}]	74	1
671	2023-10-25 04:28:09.44971+00	89	AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
672	2023-10-25 04:28:16.097374+00	89	AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
673	2023-10-25 04:29:57.233391+00	89	AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
674	2023-10-25 04:30:04.179019+00	89	AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
675	2023-10-25 04:30:48.414271+00	89	AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
676	2023-10-25 04:30:54.746905+00	89	AI Code Translator	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
677	2023-10-25 04:33:30.462759+00	122	iOS 17.1 Diperkirakan Akan Diluncurkan Besok	2	[{"changed": {"fields": ["title1"]}}]	74	1
678	2023-10-25 04:34:57.225866+00	121	The Evil Within	2	[{"changed": {"fields": ["title1"]}}]	74	1
679	2023-10-25 04:36:15.959503+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["title1"]}}]	74	1
680	2023-10-25 04:38:28.505284+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["title1"]}}]	74	1
681	2023-10-25 04:45:44.206051+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
682	2023-10-25 04:45:50.042341+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
683	2023-10-25 04:47:39.473049+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
684	2023-10-25 04:47:48.144283+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
685	2023-10-25 04:49:25.439253+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
686	2023-10-25 04:49:31.278821+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
687	2023-10-25 04:50:11.380826+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
688	2023-10-25 04:50:18.405955+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
689	2023-10-25 04:50:48.122675+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
690	2023-10-25 04:51:03.847678+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
691	2023-10-25 04:52:51.001927+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
692	2023-10-25 04:52:56.391237+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
693	2023-10-25 04:57:56.997478+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
694	2023-10-25 04:58:03.5514+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
695	2023-10-25 04:58:17.739052+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
696	2023-10-25 04:59:19.856451+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
697	2023-10-25 04:59:26.069325+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
698	2023-10-27 06:44:20.388306+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["content", "title1"]}}]	74	1
699	2023-10-27 06:46:56.541807+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["content", "title1", "content1", "title2", "content2"]}}]	74	1
700	2023-10-27 06:50:13.719967+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content", "poster_path", "title1", "content1", "title2", "content2", "title3", "content3", "poster_path3", "content5", "poster_path5"]}}]	74	1
701	2023-10-27 06:51:46.678285+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["content", "title1", "content1"]}}]	74	1
702	2023-10-27 06:54:27.976051+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["content", "title1", "content1", "title2"]}}]	74	1
703	2023-10-27 06:54:59.549296+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[]	74	1
704	2023-10-27 06:55:21.190904+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["content", "title1"]}}]	74	1
705	2023-10-27 06:55:39.760964+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["content", "title1"]}}]	74	1
706	2023-10-27 06:56:14.021807+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["title1"]}}]	74	1
707	2023-10-27 06:59:11.267716+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	2	[{"changed": {"fields": ["content", "title1", "content1"]}}]	74	1
708	2023-10-27 07:00:34.722918+00	89	AI Code Translator	2	[{"changed": {"fields": ["content", "title1", "content1", "title2", "content2"]}}]	74	1
709	2023-10-27 07:00:48.565974+00	89	AI Code Translator	2	[{"changed": {"fields": ["content10"]}}]	74	1
710	2023-11-01 06:34:04.525957+00	7	JetBrains	1	[{"added": {}}]	87	1
711	2023-11-01 07:50:23.976863+00	5	None	1	[{"added": {}}]	81	1
712	2023-11-01 07:50:43.468614+00	57	None	1	[{"added": {}}]	76	1
713	2023-11-01 07:51:02.008337+00	5	None	1	[{"added": {}}]	69	1
714	2023-11-01 07:51:22.169606+00	3	None	1	[{"added": {}}]	95	1
715	2023-11-01 07:51:40.479099+00	8	None	1	[{"added": {}}]	87	1
716	2023-11-01 07:52:13.168225+00	5	None	1	[{"added": {}}]	88	1
717	2023-11-01 07:52:38.411646+00	4	None	1	[{"added": {}}]	90	1
718	2023-11-03 01:57:04.018131+00	136	Cara Tepat Memperbaharui Data Secara Otomatis Menggunakan Kotlin Flow	2	[{"changed": {"fields": ["Content"]}}]	74	1
719	2023-11-03 03:44:38.128004+00	143	Scrcpy Versi 2 Memiliki Banyak Perubahan Yang Signifikan	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
720	2023-11-03 03:44:50.848493+00	143	Scrcpy Versi 2 Memiliki Banyak Perubahan Yang Signifikan	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
721	2023-11-03 04:05:19.852606+00	143	Scrcpy Versi 2 Memiliki Banyak Perubahan Yang Signifikan	2	[{"changed": {"fields": ["Content"]}}]	74	1
722	2023-11-03 04:13:12.84674+00	143	Scrcpy Versi 2 Memiliki Banyak Perubahan Yang Signifikan	2	[{"changed": {"fields": ["Content"]}}]	74	1
723	2023-11-03 04:13:46.569029+00	143	Scrcpy Versi 2 Memiliki Banyak Perubahan Yang Signifikan	2	[{"changed": {"fields": ["Content"]}}]	74	1
724	2023-11-03 04:14:53.938484+00	143	Scrcpy Versi 2 Memiliki Banyak Perubahan Yang Signifikan	2	[{"changed": {"fields": ["Content"]}}]	74	1
725	2023-11-03 04:16:07.11249+00	143	Scrcpy Versi 2 Memiliki Banyak Perubahan Yang Signifikan	2	[{"changed": {"fields": ["Content"]}}]	74	1
726	2023-11-03 10:02:18.619554+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
727	2023-11-03 10:02:58.461787+00	89	AI Code Translator	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
728	2023-11-03 10:03:40.552941+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
729	2023-11-03 10:04:15.773689+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
730	2023-11-04 06:02:59.192706+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
731	2023-11-04 06:04:11.605615+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
732	2023-11-04 06:05:00.777694+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
806	2023-11-09 04:20:48.028183+00	7	Antivirus dan Security	3		76	1
733	2023-11-04 06:05:21.680426+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
734	2023-11-04 06:05:46.118321+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
735	2023-11-04 06:08:03.713037+00	121	The Evil Within	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
736	2023-11-06 03:13:40.0882+00	145	Upscayl Membuat Image Menjadi Lebih Jelas Dengan AI	1	[{"added": {}}]	74	1
737	2023-11-06 03:15:12.124305+00	145	Upscayl Membuat Image Menjadi Lebih Jelas Dengan AI	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
738	2023-11-06 04:19:02.064329+00	146	PaperWM: Meningkatkan Produktivitas dengan GNOME Shell	1	[{"added": {}}]	74	1
739	2023-11-06 07:54:48.771384+00	146	PaperWM: Meningkatkan Produktivitas dengan GNOME Shell	2	[{"changed": {"fields": ["Content"]}}]	74	1
740	2023-11-06 08:23:04.25842+00	147	Turnip Boy Commits Tax Evasion	1	[{"added": {}}]	74	1
741	2023-11-06 08:24:30.546882+00	147	Turnip Boy Commits Tax Evasion	2	[{"changed": {"fields": ["Content"]}}]	74	1
742	2023-11-06 08:24:56.046952+00	147	Turnip Boy Commits Tax Evasion	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
743	2023-11-06 08:46:42.273547+00	147	Turnip Boy Commits Tax Evasion	2	[{"changed": {"fields": ["CategoryApp"]}}]	74	1
744	2023-11-06 08:47:02.096981+00	121	The Evil Within	2	[{"changed": {"fields": ["CategoryApp"]}}]	74	1
745	2023-11-06 08:52:35.407332+00	147	Turnip Boy Commits Tax Evasion	2	[{"changed": {"fields": ["Content"]}}]	74	1
746	2023-11-06 08:55:38.71967+00	147	Turnip Boy Commits Tax Evasion	2	[{"changed": {"fields": ["Caption"]}}]	74	1
747	2023-11-06 09:04:21.048585+00	147	Turnip Boy Commits Tax Evasion	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
748	2023-11-06 09:04:32.790813+00	147	Turnip Boy Commits Tax Evasion	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
749	2023-11-06 09:22:32.612549+00	149	Beasiswa Developer Indonesia	2	[{"changed": {"fields": ["Content", "Promo end date", "Poster path"]}}]	74	1
750	2023-11-06 09:23:48.847795+00	149	Beasiswa Developer Indonesia	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
751	2023-11-06 09:27:15.1949+00	149	Beasiswa Developer Indonesia	2	[{"changed": {"fields": ["CategoryApp"]}}]	74	1
752	2023-11-06 09:32:02.728821+00	145	Upscayl Membuat Image Menjadi Lebih Jelas Dengan AI	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
753	2023-11-06 09:32:15.913225+00	146	PaperWM: Meningkatkan Produktivitas dengan GNOME Shell	2	[{"changed": {"fields": ["Promo end date"]}}]	74	1
754	2023-11-07 05:16:37.735385+00	146	PaperWM: Meningkatkan Produktivitas dengan GNOME Shell	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
755	2023-11-07 05:16:49.767552+00	146	PaperWM: Meningkatkan Produktivitas dengan GNOME Shell	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
756	2023-11-07 05:32:54.36568+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
757	2023-11-07 05:33:07.165352+00	120	Best Practices High-Performing Menggunakan Kotlin	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
758	2023-11-07 13:45:27.866165+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
759	2023-11-07 13:45:43.447848+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
760	2023-11-07 13:49:58.089969+00	121	The Evil Within	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
761	2023-11-07 13:50:07.815588+00	121	The Evil Within	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
762	2023-11-07 13:52:14.377004+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
763	2023-11-07 13:52:24.986139+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["Poster path"]}}]	74	1
764	2023-11-09 04:07:12.470426+00	6	Mobile	1	[{"added": {}}]	81	1
765	2023-11-09 04:07:44.930191+00	7	Mac	1	[{"added": {}}]	81	1
766	2023-11-09 04:15:51.197131+00	54	Virtual Reality Application	3		76	1
767	2023-11-09 04:15:51.200973+00	53	Desktop Application Development	3		76	1
768	2023-11-09 04:15:51.202979+00	52	Big Data Analytics	3		76	1
769	2023-11-09 04:15:51.204953+00	50	Game Development	3		76	1
770	2023-11-09 04:15:51.206827+00	49	Collaboration Software	3		76	1
771	2023-11-09 04:15:51.208869+00	48	Music Streaming Service	3		76	1
772	2023-11-09 04:15:51.210482+00	47	Aplikasi Kesehatan	3		76	1
773	2023-11-09 04:15:51.212103+00	46	Product Analysis	3		76	1
774	2023-11-09 04:15:51.213864+00	45	Content Management System	3		76	1
775	2023-11-09 04:15:51.219447+00	44	Audio Editor	3		76	1
776	2023-11-09 04:15:51.221494+00	43	Mobile Application Development	3		76	1
777	2023-11-09 04:15:51.223238+00	42	Group Work Tool	3		76	1
778	2023-11-09 04:15:51.225268+00	41	Software Security Applications	3		76	1
779	2023-11-09 04:15:51.226903+00	40	Edit PDF	3		76	1
780	2023-11-09 04:15:51.228915+00	39	Business communication	3		76	1
781	2023-11-09 04:15:51.230411+00	38	Personal Finance Manager	3		76	1
782	2023-11-09 04:15:51.232398+00	37	E-commerce and Finance	3		76	1
783	2023-11-09 04:15:51.234185+00	36	Digital Content Application	3		76	1
784	2023-11-09 04:15:51.235887+00	35	VPN Software	3		76	1
785	2023-11-09 04:15:51.237582+00	34	Backend Development	3		76	1
786	2023-11-09 04:15:51.239301+00	33	Cloud Service	3		76	1
787	2023-11-09 04:15:51.241021+00	32	Front-end Development	3		76	1
788	2023-11-09 04:15:51.242768+00	31	Debugging and Profiling Tools	3		76	1
789	2023-11-09 04:15:51.244368+00	30	Virtual Office	3		76	1
790	2023-11-09 04:15:51.246055+00	29	Analysis Data	3		76	1
791	2023-11-09 04:15:51.247728+00	28	Distance learning	3		76	1
792	2023-11-09 04:15:51.249223+00	27	Password Management	3		76	1
793	2023-11-09 04:15:51.250821+00	25	Sound Processor	3		76	1
794	2023-11-09 04:15:51.252424+00	24	Video Editing	3		76	1
795	2023-11-09 04:15:51.254513+00	20	Scheduling and Reminders	3		76	1
796	2023-11-09 04:15:51.25622+00	19	CAD & 3D Design	3		76	1
797	2023-11-09 04:15:51.258114+00	17	File and Document Management	3		76	1
798	2023-11-09 04:15:51.26006+00	16	Backup and Restore	3		76	1
799	2023-11-09 04:15:51.261583+00	15	System Utility	3		76	1
800	2023-11-09 04:15:51.263064+00	11	Office	3		76	1
801	2023-11-09 04:15:51.264613+00	3	VOD	3		76	1
802	2023-11-09 04:15:51.266155+00	2	Free	3		76	1
803	2023-11-09 04:15:51.267643+00	1	Graphic	3		76	1
804	2023-11-09 04:19:55.473226+00	26	Software	3		76	1
805	2023-11-09 04:20:15.185404+00	10	Grapich Design	3		76	1
807	2023-11-09 04:21:11.321105+00	51	Network Security Management	3		76	1
808	2023-11-09 04:21:11.324274+00	23	System Administration	3		76	1
809	2023-11-09 04:21:11.325886+00	8	Operating System	3		76	1
810	2023-11-09 08:21:34.139128+00	58	Security	1	[{"added": {}}]	76	1
811	2023-11-09 08:24:03.124317+00	59	Productivity	1	[{"added": {}}]	76	1
812	2023-11-10 01:51:22.549961+00	147	Turnip Boy Commits Tax Evasion	2	[{"changed": {"fields": ["CategoryApp"]}}]	74	1
813	2023-11-12 03:11:50.057264+00	1	My fav	2	[{"changed": {"fields": ["Nocharges"]}}]	89	1
814	2023-11-28 07:42:53.574913+00	vDOEkPdG.pbkdf2_sha256$260000$R5ZPR9fj24HkbZTJMcClVb$podyFnfSwDxFrcfvQLg+l/hcLhCXFZPNOT8T+F/2NvY=	aws	1	[{"added": {}}]	34	1
815	2023-11-28 07:44:31.635219+00	qogcF0vl.pbkdf2_sha256$150000$eQ9vIxe8Wv4Y$Z85LXsTBvzbl6Zi33D+YlTDBKdOdN09n6S3Z3p2e/Qw=	admin	3		34	1
816	2023-11-28 07:44:31.639605+00	sv6nDcQN.pbkdf2_sha256$150000$7RMRSKo0jRxZ$EoFhMjlBlLAb1CoU31rh7IThjmFoF/2IMAcWXz6wjXM=	firts_mylist	3		34	1
817	2023-11-28 07:46:26.26311+00	203	laland5	3		74	1
818	2023-11-28 07:46:26.266772+00	202	laland5	3		74	1
819	2023-12-01 04:12:28.980187+00	8	Lengdut	3		91	1
820	2023-12-04 08:33:53.185287+00	1	Maintenace membutuhkan 3 jam	3		91	1
821	2023-12-21 08:22:01.859738+00	9	abc@g.com	3		6	1
822	2023-12-21 08:22:01.863443+00	8	admin@admin.com	3		6	1
823	2023-12-21 08:22:01.865857+00	7	a@gmail.com	3		6	1
824	2023-12-21 08:22:01.868364+00	11	jaka	3		6	1
825	2023-12-21 08:22:01.870708+00	12	kasd@gmail.co	3		6	1
826	2023-12-21 08:22:01.875132+00	6	max@max2.com	3		6	1
827	2023-12-21 08:22:01.877358+00	10	minka	3		6	1
828	2023-12-21 08:22:01.879708+00	5	versta	3		6	1
829	2023-12-21 08:52:13.857913+00	13	dwiazelinarizki	1	[{"added": {}}]	6	1
830	2023-12-21 08:54:06.689674+00	13	dwiazelinarizki	2	[{"changed": {"fields": ["First name", "User permissions"]}}]	6	1
831	2023-12-21 09:16:29.419646+00	2	Dwi Favorite	1	[{"added": {}}]	89	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	user
7	rooms	room
8	rooms	roomtype
9	rooms	amenity
10	rooms	facility
11	rooms	houserule
12	rooms	photo
13	reviews	review
14	reservations	reservation
15	reservations	bookedday
16	lists	list
17	conversations	conversation
18	conversations	message
34	rest_framework_api_key	apikey
35	games	gametype
36	games	photo1
37	games	game
38	games	photo2
39	games	photo
40	tips	tiptype
41	tips	tip
42	tips	photo2
43	tips	photo
44	tiplists	tiplist
45	tiplists	tiplisttutorial
46	profits	articletype
47	profits	profit
48	profits	photo2
49	profits	photo
50	tiplists	freelist
51	tiplists	tiplistprofit
52	tutorials	articletype
53	tutorials	photo
54	tutorials	photo2
55	tutorials	tutorial
56	news	photo2
57	news	photo
58	news	new
60	tiplists	tiplistnew
61	guides	articletype
62	guides	guide
63	guides	photo2
64	guides	photo
65	tiplists	tiplistguide
59	news	articletype
66	profits	detail
67	profits	comment
68	profits	category
69	nocharges	categoryfree
70	nocharges	image6
71	nocharges	image10
72	nocharges	image
73	nocharges	image9
74	nocharges	nocharge
75	nocharges	image7
76	nocharges	categoryapp
77	nocharges	image4
78	nocharges	image1
79	nocharges	image3
80	nocharges	image5
81	nocharges	categoryos
82	nocharges	image2
83	nocharges	image8
84	nocharges	keyword
85	nocharges	company
86	nocharges	freefrom
87	nocharges	developer
88	nocharges	distribution
89	favorites	favoritenorcharge
90	nocharges	domain
91	announcements	announcement
92	nocharges	categoryarticle
93	nocharges	similararticle
94	nocharges	recommendation
95	nocharges	categorydomain
96	announcements	image9
97	announcements	image8
98	announcements	image7
99	announcements	image6
100	announcements	image5
101	announcements	image4
102	announcements	image3
103	announcements	image2
104	announcements	image10
105	announcements	image1
106	announcements	image
107	authtoken	token
108	authtoken	tokenproxy
109	sites	site
110	account	emailaddress
111	account	emailconfirmation
112	socialaccount	socialaccount
113	socialaccount	socialapp
114	socialaccount	socialtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-12-16 03:39:15.978756+00
2	contenttypes	0002_remove_content_type_name	2021-12-16 03:39:15.992829+00
3	auth	0001_initial	2021-12-16 03:39:16.029515+00
4	auth	0002_alter_permission_name_max_length	2021-12-16 03:39:16.073467+00
5	auth	0003_alter_user_email_max_length	2021-12-16 03:39:16.083004+00
6	auth	0004_alter_user_username_opts	2021-12-16 03:39:16.092208+00
7	auth	0005_alter_user_last_login_null	2021-12-16 03:39:16.099613+00
8	auth	0006_require_contenttypes_0002	2021-12-16 03:39:16.106376+00
9	auth	0007_alter_validators_add_error_messages	2021-12-16 03:39:16.116297+00
10	auth	0008_alter_user_username_max_length	2021-12-16 03:39:16.125919+00
11	auth	0009_alter_user_last_name_max_length	2021-12-16 03:39:16.132536+00
12	auth	0010_alter_group_name_max_length	2021-12-16 03:39:16.144015+00
13	auth	0011_update_proxy_permissions	2021-12-16 03:39:16.152576+00
14	users	0001_initial	2021-12-16 03:39:16.196068+00
15	admin	0001_initial	2021-12-16 03:39:16.256623+00
16	admin	0002_logentry_remove_auto_add	2021-12-16 03:39:16.283002+00
17	admin	0003_logentry_add_action_flag_choices	2021-12-16 03:39:16.294736+00
18	conversations	0001_initial	2021-12-16 03:39:16.340907+00
19	conversations	0002_auto_20190924_1800	2021-12-16 03:39:16.434456+00
20	rooms	0001_initial	2021-12-16 03:39:16.466469+00
21	rooms	0002_auto_20190923_1819	2021-12-16 03:39:16.507099+00
22	rooms	0003_auto_20190924_1436	2021-12-16 03:39:16.648025+00
23	rooms	0004_auto_20190924_1457	2021-12-16 03:39:16.8835+00
24	lists	0001_initial	2021-12-16 03:39:16.928249+00
25	lists	0002_auto_20190924_1800	2021-12-16 03:39:17.013351+00
26	lists	0003_auto_20191119_2016	2021-12-16 03:39:17.045891+00
27	lists	0004_auto_20191218_2035	2021-12-16 03:39:17.072921+00
28	reservations	0001_initial	2021-12-16 03:39:17.10365+00
29	reservations	0002_auto_20190924_1800	2021-12-16 03:39:17.163077+00
30	reservations	0003_bookedday	2021-12-16 03:39:17.194642+00
31	reviews	0001_initial	2021-12-16 03:39:17.231287+00
32	reviews	0002_auto_20190924_1800	2021-12-16 03:39:17.2982+00
33	reviews	0003_auto_20191119_1723	2021-12-16 03:39:17.422424+00
34	rooms	0005_auto_20190924_1739	2021-12-16 03:39:17.448767+00
35	rooms	0006_auto_20190924_1800	2021-12-16 03:39:17.614697+00
36	rooms	0007_auto_20190924_1806	2021-12-16 03:39:17.63861+00
37	rooms	0008_auto_20190925_1555	2021-12-16 03:39:17.658747+00
38	rooms	0009_auto_20191029_1509	2021-12-16 03:39:17.676925+00
39	sessions	0001_initial	2021-12-16 03:39:17.690929+00
40	users	0002_auto_20190925_1555	2021-12-16 03:39:17.719771+00
41	users	0003_auto_20191029_1509	2021-12-16 03:39:17.763286+00
42	users	0004_auto_20191029_1523	2021-12-16 03:39:17.796337+00
43	users	0005_user_login_method	2021-12-16 03:39:17.813472+00
44	users	0006_auto_20191119_1723	2021-12-16 03:39:17.831559+00
45	users	0007_auto_20191119_2016	2021-12-16 03:39:17.873071+00
46	users	0008_auto_20191218_2035	2021-12-16 03:39:17.904663+00
67	rooms	0010_auto_20211220_1823	2021-12-20 09:23:40.758147+00
68	users	0009_user_name	2021-12-20 09:23:40.780809+00
69	users	0010_remove_user_name	2021-12-20 09:24:30.864884+00
70	rest_framework_api_key	0001_initial	2021-12-28 01:28:54.353604+00
71	rest_framework_api_key	0002_auto_20190529_2243	2021-12-28 01:28:54.3789+00
72	rest_framework_api_key	0003_auto_20190623_1952	2021-12-28 01:28:54.391038+00
73	rest_framework_api_key	0004_prefix_hashed_key	2021-12-28 01:28:54.441703+00
74	games	0001_initial	2022-01-10 08:07:00.333373+00
75	games	0002_auto_20220110_1712	2022-01-10 08:13:00.842043+00
76	games	0003_auto_20220110_1727	2022-01-10 08:27:52.835697+00
77	games	0004_game_link_tutorial	2022-01-10 08:42:48.784725+00
78	tips	0001_initial	2022-01-10 09:23:14.535082+00
79	tiplists	0001_initial	2022-01-11 06:51:30.629468+00
80	tiplists	0002_tiplisttutorial	2022-01-11 09:26:17.910478+00
81	tips	0002_auto_20220316_1737	2022-03-16 08:37:45.60909+00
82	games	0005_game_imagedata	2022-03-17 02:06:03.256167+00
83	profits	0001_initial	2022-03-23 03:59:20.187078+00
84	tiplists	0003_freelist	2022-03-23 03:59:20.250204+00
85	tiplists	0004_auto_20220323_1259	2022-03-23 03:59:20.295688+00
86	tips	0003_tip_imagedata	2022-03-23 03:59:20.322288+00
87	tiplists	0005_auto_20220323_1344	2022-03-23 04:44:50.415703+00
88	tiplists	0006_auto_20220323_1609	2022-03-23 07:09:14.146848+00
89	tutorials	0001_initial	2022-03-24 02:33:08.194554+00
90	rest_framework_api_key	0005_auto_20220110_1102	2022-03-24 04:18:24.66767+00
91	news	0001_initial	2022-03-24 13:49:51.662645+00
92	tiplists	0002_tiplistnew	2022-03-24 14:14:26.30331+00
93	guides	0001_initial	2022-03-25 02:11:09.983489+00
94	news	0002_auto_20220325_1108	2022-03-25 02:11:10.016211+00
95	tiplists	0003_tiplistguide	2022-03-25 02:11:10.064964+00
96	news	0003_auto_20220325_1211	2022-03-25 03:14:42.471196+00
97	games	0006_auto_20220810_1135	2022-08-10 02:36:42.003343+00
98	games	0007_remove_gametype_caption	2022-08-10 02:41:05.996139+00
99	profits	0002_comment_detail	2022-08-10 07:47:40.486744+00
100	profits	0003_auto_20220810_1652	2022-08-10 07:53:10.303062+00
101	profits	0004_auto_20220811_1125	2022-08-11 02:25:44.965798+00
102	profits	0005_profit_imagedata2	2022-08-11 07:27:09.244261+00
103	profits	0006_auto_20220811_1638	2022-08-11 07:38:42.396931+00
104	profits	0007_auto_20220811_1643	2022-08-11 07:43:42.251898+00
105	profits	0008_auto_20220811_1643	2022-08-11 07:43:42.296655+00
106	profits	0009_auto_20220812_1056	2022-08-12 01:56:50.901952+00
107	profits	0010_auto_20220812_1117	2022-08-12 02:17:57.944936+00
108	nocharges	0001_initial	2022-08-12 03:20:40.208188+00
109	nocharges	0002_auto_20220812_1223	2022-08-12 03:23:23.095391+00
110	nocharges	0003_nocharge_category_free	2022-08-12 03:33:51.211568+00
111	nocharges	0004_auto_20220812_1323	2022-08-12 04:23:19.740683+00
112	nocharges	0004_auto_20220812_1405	2022-08-12 05:05:49.37375+00
113	nocharges	0005_auto_20220812_1406	2022-08-12 05:06:48.63729+00
114	favorites	0001_initial	2022-08-12 15:05:24.760591+00
115	tiplists	0003_delete_tiplist	2022-08-13 04:19:14.475533+00
116	nocharges	0006_auto_20220813_1543	2022-08-13 06:43:15.874644+00
117	announcements	0001_initial	2023-02-15 04:02:09.638568+00
118	nocharges	0007_nocharge_similar_news	2023-02-23 05:18:57.266004+00
119	nocharges	0008_nocharge_related_article	2023-02-23 07:31:56.094776+00
120	nocharges	0009_auto_20230223_1650	2023-02-23 07:50:55.327834+00
121	nocharges	0010_auto_20230223_1701	2023-02-23 08:01:55.835055+00
122	nocharges	0011_auto_20230227_1554	2023-02-27 06:54:24.943414+00
123	nocharges	0012_auto_20230227_1612	2023-02-27 07:32:19.640506+00
124	nocharges	0013_auto_20230227_1726	2023-02-27 08:26:46.525922+00
125	nocharges	0014_auto_20230227_1745	2023-02-27 08:45:30.186931+00
126	nocharges	0015_auto_20230301_1124	2023-03-01 02:25:09.628217+00
127	nocharges	0016_nocharge_url	2023-03-02 10:05:52.365745+00
128	tiplists	0004_delete_tiplistnew	2023-03-16 04:42:51.330516+00
129	tiplists	0005_delete_tiplisttutorial	2023-03-16 04:58:37.562775+00
130	tiplists	0002_delete_tiplist	2023-03-19 08:08:12.268031+00
131	nocharges	0017_auto_20230320_1639	2023-03-20 07:39:35.98799+00
132	nocharges	0018_remove_nocharge_related_article	2023-03-20 13:43:47.682498+00
133	nocharges	0019_nocharge_slug	2023-03-21 03:45:30.766359+00
134	nocharges	0020_auto_20230321_1330	2023-03-21 04:30:23.620104+00
135	nocharges	0021_nocharge_promo_end_date	2023-03-22 08:11:08.218511+00
136	nocharges	0022_remove_nocharge_url	2023-04-05 03:10:36.156946+00
137	announcements	0002_auto_20230405_1254	2023-04-05 03:54:39.89669+00
138	nocharges	0023_auto_20230405_1258	2023-04-05 03:58:45.306092+00
139	nocharges	0024_auto_20230410_1646	2023-04-10 07:46:49.785888+00
140	nocharges	0025_auto_20230426_1018	2023-04-26 03:18:49.642381+00
141	nocharges	0026_auto_20230426_1019	2023-04-26 03:19:58.579899+00
142	nocharges	0027_auto_20230426_1044	2023-04-26 03:44:27.461019+00
143	nocharges	0028_auto_20230503_0810	2023-05-03 01:10:06.117025+00
144	nocharges	0029_auto_20230503_0820	2023-05-03 01:20:38.452423+00
145	nocharges	0030_auto_20230503_0822	2023-05-03 01:22:18.128989+00
146	nocharges	0031_auto_20230708_1436	2023-07-08 07:37:01.618464+00
147	authtoken	0001_initial	2023-07-19 03:06:09.607412+00
148	authtoken	0002_auto_20160226_1747	2023-07-19 03:06:09.801026+00
149	authtoken	0003_tokenproxy	2023-07-19 03:06:09.811158+00
150	nocharges	0032_delete_recommendation	2023-07-20 08:56:31.203689+00
151	account	0001_initial	2023-07-20 09:30:30.764657+00
152	account	0002_email_max_length	2023-07-20 09:30:30.811516+00
153	sites	0001_initial	2023-07-20 09:30:30.819967+00
154	sites	0002_alter_domain_unique	2023-07-20 09:30:30.830791+00
155	socialaccount	0001_initial	2023-07-20 09:30:30.983463+00
156	socialaccount	0002_token_max_lengths	2023-07-20 09:30:31.043185+00
157	socialaccount	0003_extra_data_default_dict	2023-07-20 09:30:31.054894+00
158	nocharges	0033_auto_20230720_1648	2023-07-20 09:49:11.826259+00
159	nocharges	0034_auto_20230729_1557	2023-07-29 08:58:02.516911+00
160	announcements	0003_auto_20230828_0955	2023-10-19 13:58:03.818842+00
161	announcements	0004_auto_20230905_1420	2023-10-19 13:58:05.236469+00
162	nocharges	0035_auto_20230828_1011	2023-10-19 13:58:05.283472+00
163	rooms	0011_auto_20231027_1446	2023-10-27 07:46:51.940698+00
164	rooms	0012_auto_20231027_1500	2023-10-27 08:00:34.132257+00
165	rooms	0013_auto_20231027_1506	2023-10-27 08:06:23.297408+00
166	rooms	0014_delete_photo	2023-10-27 08:09:23.645465+00
167	reservations	0004_auto_20231027_1518	2023-10-27 08:19:47.237434+00
168	conversations	0003_auto_20231027_1521	2023-10-27 08:21:14.746527+00
169	tiplists	0003_delete_tiplistprofit	2023-10-27 08:26:28.652804+00
170	profits	0011_auto_20231027_1526	2023-10-27 08:26:28.859163+00
171	lists	0005_delete_list	2023-10-27 08:32:24.471145+00
172	rooms	0015_delete_room	2023-10-27 08:37:27.944782+00
173	auth	0012_alter_user_first_name_max_length	2023-10-30 07:24:32.520975+00
174	nocharges	0036_auto_20231030_1424	2023-10-30 07:24:33.702826+00
175	announcements	0005_auto_20231030_1437	2023-10-30 07:37:41.185674+00
176	favorites	0002_alter_favoritenorcharge_id	2023-10-30 07:37:41.250789+00
177	users	0011_alter_user_id	2023-10-30 07:37:41.529902+00
178	nocharges	0037_auto_20231101_1424	2023-11-01 07:25:06.247201+00
179	nocharges	0038_auto_20231102_1311	2023-11-02 06:12:08.462+00
180	announcements	0006_alter_announcement_paragraph1	2023-11-08 13:07:25.957861+00
181	account	0003_alter_emailaddress_create_unique_verified_email	2023-11-24 02:01:10.489785+00
182	account	0004_alter_emailaddress_drop_unique_email	2023-11-24 02:01:10.518746+00
183	account	0005_emailaddress_idx_upper_email	2023-11-24 02:01:10.53915+00
184	socialaccount	0004_app_provider_id_settings	2023-11-24 02:01:10.567279+00
185	socialaccount	0005_socialtoken_nullable_app	2023-11-24 02:01:10.597579+00
186	socialaccount	0006_alter_socialaccount_extra_data	2023-11-24 02:01:10.62985+00
187	announcements	0007_alter_announcement_poster_path	2023-12-01 08:41:50.579296+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
h8t6da5v0inw2zo1xaz1gc4z68k12bqs	ZGY5ODM4YTNiN2Y2NTY5ZjE0ZDc5NDRmYzc5MDg4ZTQ3YzJiOTFkMDp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjliNGM0ZTA1ZjIwOGJiNmQxOGIxMDg1YWMzMmRjMTAyMmFhZGQ0MDEifQ==	2021-12-31 02:25:51.354141+00
1u61mxmpohmw3jecr6mz5i30hnm98ifq	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-01-04 03:45:11.358851+00
4701vmyaipujfzrly1y54pewrl4tfils	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-01-04 03:52:34.445942+00
9qaqaxtmpt84zstpzl20ldn1stntr7ct	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-01-25 09:53:06.740789+00
y4r5s5310427ecxf9nx1e0t5fp6grex3	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2022-01-26 04:43:52.129696+00
1z9k67hh7fzgbacwdvu7x4t4odcn9pmu	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-02-08 20:27:45.731721+00
uvihmfaw3bqvtixx2qu23vfsn758mh2c	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-02-17 10:35:25.122079+00
o1680k8iyf7eex7a80g718dpzmtlehyj	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-02-18 09:07:21.565595+00
31dydodqu8jx8a4g7z3nrldd8mf180de	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-03-29 08:38:09.363591+00
iq84snz20z0impy5ds32li36tb5z2jue	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2022-03-30 07:14:05.403475+00
rjzcvfhvlvlgy9x265r6cw36dcuttfkd	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-04-04 02:47:06.239976+00
56msr572rxkge2wms6b5k1ys38ngiyx8	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2022-04-06 04:07:01.183798+00
635lzxgrvpl4bhigytq0o3osgj2agv55	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-04-27 14:43:40.780711+00
fdjd0cr2p40sc29cpvdcgolh0w2782nt	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-06-20 02:59:00.099438+00
s0dci1lnelvecdq28roqbeqe4998vmys	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-07-24 05:16:59.372095+00
r0jsy1ubfj8zyl8vln3jb3shzxzn2r0s	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2022-08-22 04:02:50.746499+00
71rf8cjbi9lerbb4q8ifdia8mtsooxnq	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-08-22 14:38:31.296891+00
b9mb51oce0wpvztd70fw24odu1uetd6m	MzU5ZGZmZjFhYmJlMWY1NzczYmZkOTc1OTQwMzc2ZGI1YWY1MzYyZTp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjliNGM0ZTA1ZjIwOGJiNmQxOGIxMDg1YWMzMmRjMTAyMmFhZGQ0MDEiLCJpc19ob3N0aW5nIjp0cnVlfQ==	2022-08-24 02:38:25.340249+00
qoalzpt3m3kkz6e40tu4t82z7eihp9wc	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-08-25 01:58:18.232543+00
7wp2y2tlh4hercs4f835okq5tuj4h9d0	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-09-10 01:25:22.989631+00
mwg9go84fqyqd1y5bo5gzamwfz1vehgx	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-09-13 07:20:04.055409+00
8dfg47pbvs2x0lfle4kptxfyv0wlrnbj	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-09-26 00:00:13.611011+00
tpwcn0swhreh12gobslshslnswy0e5j2	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-10-13 07:37:26.257829+00
ofjeeox6atjh8dkrssnotuu3f0kxyby9	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-12-06 03:34:47.293107+00
ymjo74x6hbcojfmshb2x35102n4900eb	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-12-27 06:40:20.053516+00
dqvqd4s0jh6jelr59ct1gt8o4kx9ucjm	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-01-04 05:05:39.362282+00
s1y97cwtybs8vpzpczgm25hv7g1z1bv1	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-01-26 02:26:57.572295+00
vu7y2my1244lb2y3morna2ien57fbt49	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-02-10 02:33:37.457781+00
j8omtuylqc6zbaayh4fnwl32sg56x3uw	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-02-10 03:24:42.930965+00
iic41b5doog1yh7swg7h326gk0bqkiaj	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-02-18 15:04:58.45305+00
ehnqa9hujkgnm51ik4vjvdhz5g86xcgj	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2023-03-11 07:18:26.156763+00
67bxgj5qn1ioqnm7bx8i12vru1ovoruv	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-03-14 15:20:23.76081+00
c8jv115t9ncl92yyqdozsxdy0m7wg522	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-03-23 07:11:10.345273+00
wvlp8xzv5r1rs8x2t4stiyct4ppprxqs	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-03-30 05:26:55.247525+00
37kowjaec4hcgt3kp90vaf0lkekijaus	NjcyZWJkY2VkMTU0ZTczYWM5OTczNjkzZDYwODdmZmUxMWU3MGFjZTp7fQ==	2023-03-30 07:19:51.335656+00
9tjbh77a8251s9xakntyjjokw9280zz7	NjcyZWJkY2VkMTU0ZTczYWM5OTczNjkzZDYwODdmZmUxMWU3MGFjZTp7fQ==	2023-03-30 07:23:16.941799+00
8176dxutjq67g7w4197ei8p9x9sz1auf	NjcyZWJkY2VkMTU0ZTczYWM5OTczNjkzZDYwODdmZmUxMWU3MGFjZTp7fQ==	2023-04-03 09:29:37.283085+00
4hnrw3543yp0dusvls2x72uo073ngdx3	Njk2OTExNDBjODZiODYzZjRjYzYyOWRlY2Y5MDFhYmJlMTc1NGRhNzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2ZhZWU4MzVmM2Q2YTVhNWRhMDAwNjI1YTZiNjg2M2QxNGVkMDc1IiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2023-04-03 09:33:50.394598+00
jpe2mpy53i2xzche5s01qgaz1kkwuk9e	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-04-04 02:49:53.571154+00
27wn48zm8f27siuqtj1di9d8meu7zpb3	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-04-04 06:39:21.2058+00
y1drawkl3jn45xxx189ndf7q2yboaqla	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-04-06 14:48:08.545972+00
osjkac552owceeku37o3767adnfwxosq	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-04-11 10:14:23.012123+00
gji0qd8kgrar57uo8jv1gexnpxghsvrr	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-04-24 07:47:20.392973+00
ud3j81lrgchdznv8lsvn74x0fdecncdp	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-04-27 04:19:00.91818+00
0o0lsc4l8tqt3dtv61ur4x6pgkfdldsd	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-05-10 02:25:16.032893+00
s20huftdj3zqv5bkwil98okcgrp1bs7g	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-05-24 07:28:44.24473+00
ix6cr0jlo0c6teai4gbf8bpna8wd454i	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-07-05 07:57:38.915115+00
5vumaaipjzdo3dbermvt9eal0ilnbpl8	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-07-22 07:28:00.991517+00
6f4yhnv4tb4ttar6uwrmfov9vj74zpcf	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-07-24 04:17:18.283833+00
zfc0j7f4o1qlqcyeemzrv0ecfj46uvia	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-07-25 02:22:58.813451+00
c6yhmmyojphrd161imc4xptoapsyf3i2	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:21:16.065286+00
e0x8kcel1ko2md0nzdy1v3yocqmc2txv	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:21:36.934063+00
d7fo4nizq3hsckfkdwsue00smy1g74jx	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:27:01.364842+00
364mzzzxab4vtpvwewisi1cnot8ufe0g	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:33:55.369817+00
8m5gozpw3leo4l05bnkxshyofleicau7	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:44:48.909958+00
lo72pp3e2sp2inv4171sck3lsi2clqm0	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:57:29.105363+00
qwrphkzd09o31wxree8ex95ynv6kfu9c	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:58:39.620235+00
zhrl5vhqshdjgxkav029y2sat3xn176i	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 09:44:07.752762+00
511or2ut0hdmou04bxzrz9bh60a7b8fc	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 03:18:31.102142+00
p6qix8wj6d37mb9y19rnh913xve1jqih	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 03:19:24.611947+00
xr5xpxnhe6xxydlhzmfpofc3sfmgt8g0	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 03:47:59.499488+00
20jtskktrbh75uxms77la68bww4aog2u	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 03:52:19.278224+00
b56ri4gfyl3gk3cpf21bu26zdngtji6c	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 07:02:18.196479+00
tewpol59zyd7dolmgqwjlwm7ta1ptny4	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 02:59:13.603025+00
aehngsnlk319zpwo3hte6wpuw78evc9o	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:01:58.37772+00
24ytbqfk8389fxsmx1ti09gd9syo5jr1	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:04:22.215579+00
nzepwluddmgtnbo6syczq45jolqml693	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:05:20.645013+00
0q65q70su86a2pqugkym8xzqjtyvuukt	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:06:25.43621+00
4t70qycc78lu2yj0t0phfq31ip2p9h6i	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:13:17.385044+00
8qx14xbqaujk571zt96yuphui0bxhiqu	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:20:07.181977+00
a1cs64gk75jrlnwu5zdt9yo7yyi6avxn	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 07:16:35.875772+00
9xf4pi8shd521t2tk9kq4rigzoq73782	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 08:53:50.062265+00
isao5mad3bzc1hymn0pgb1zff9hjxi0u	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 09:40:24.658009+00
2oqyofq7t74f2d79af636rka7kz212m2	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 09:41:42.105787+00
1zeg5pt3b5uab74j3kfxok8exej75kvh	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 02:32:53.458594+00
a0azy4rfhwj40y45aek9z2yk8vlxokos	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 03:45:01.049124+00
jnf2udz0p4yoj5pqz11xcyizvzviyykr	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 02:55:37.768601+00
vpchoo0ecpkzehs4u2l02u61xwbyhk7u	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 02:56:48.829502+00
nap47fd8yuzum29m3jnzh7irxg6sb3ka	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 04:40:38.433024+00
e6s922p8gpnrux23k01xv55dcntqm5wo	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 04:45:59.685773+00
x9coz8edk6586sbl3th433fywzzk3sg1	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 04:54:20.252771+00
04au52zgzrihxsf60d7ld31h9ppzqe6x	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 04:55:15.671666+00
xb59tpcgod8t6u3lzd5kcegyvkvll4kv	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 07:25:38.3039+00
7o376n10h5edqnbup8lwo1n0rbiqv34a	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 07:45:08.321775+00
qhzdrydsremy7t1noradckgf83sujkih	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 08:08:09.197259+00
3y9syknpmxhtdofrz6jcq4nptszbegq0	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 08:48:01.426685+00
zmyxs2g4kt6b284a5ppjzyz8gb91m0eq	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 09:40:31.564303+00
c10omvrs30ocpcfutcuvwdymv5pqvcof	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 09:51:17.71552+00
bqk23zldminekkk50z0z5lnuv5rws9vt	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 09:55:30.180085+00
ub3n67aw7rvc6i8xt0wa47c1fz496j1c	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 09:57:40.333435+00
cl2wcrpmu945kvzpolri3cnxv7gpg6jo	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 01:50:02.853862+00
ftrqd2138zn6bsxl990t6k75co5mki47	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 01:53:58.871227+00
4o8jo5hrcib1snmutko931nla3fgp5fs	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 02:12:19.864156+00
1idbhf2j4mdo0gg40iwnz4rf55rcasjf	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 03:07:25.907727+00
9f2pt806tnqn7gnumg5woq6mjk0ih5d6	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 03:21:37.130484+00
pjzzdug1ybut3k5021cy42p5r2xx9rqc	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-11 01:48:51.467678+00
x6wqk1jlf82qe0yk5vblzhxgu0t2b035	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qyL2O:FPt9gKewQnjHNIp8Q-1wLviw6uDQgXQKDQfawnFHGnE	2023-11-15 23:54:16.940784+00
ilm21rirhmqj0y5i3ktvylcghq2vkt03	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-10 07:26:03.581301+00
wka29k5dcf7bxbght6wueamicf4i8gvx	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-10 08:10:06.107656+00
j1z3tdykm9dpuza4mhssbefx1sia1smi	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-10 08:15:17.917735+00
hiflswepaaw9bfz45swmbpmsxf6ncozy	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-10 08:20:18.869429+00
6b239j086ed5re2aime9ojomool1rzh4	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-10 08:27:01.677307+00
evjdogm0b897tcd6v5g60zm1s69u0shz	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-10 08:32:41.09322+00
cl1uwwq1sw9wlktvrs1rh6k7i00uik1d	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-10 08:39:05.621952+00
5q6exqx15zoa3wyi5qfvtn2wzhl04jte	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-10 10:07:11.996862+00
srp8uwndpo4s858g0yu6onws8tpt30h9	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-11 09:14:55.190786+00
w3skhxukdqu9oorjz2dmq12i0mnlbtin	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-11 10:02:03.634315+00
cdu4wb1ih684c6rx9jv0rfwvcbwq997c	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 01:51:17.42695+00
6syb3zip6lrhlrhcx1rau7ezd7jx1y25	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:07:44.071786+00
i5xy8segg3be75ddlhpg7ygcovnz7kj4	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:07:55.271145+00
trw5slpmdo1z5oew6zd27xejhzua2jvs	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:13:23.233287+00
9rm5n8yi0y5gw5agtpbet0hn3phnn2sa	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:14:13.976187+00
8tdm5gzij1ca7m4p3q3570u3x47mmg49	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:17:22.114275+00
mnakzhpvib6cetcmoot7hvjn0qqb17gj	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:17:40.348034+00
kr3vuhuwtvug9ul8svev4tejj1d3vk6d	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:20:10.342003+00
rspx3g43yduui7gnz2hp5c4gqiag5pzx	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:20:32.468001+00
xuw10gqlntxcypdhzcnjt6s3h2i21a2o	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:20:34.294461+00
21p250lm6hzs7b70xtp29mqngicv6lh1	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:20:39.315757+00
9ldxyy4k39t4yzk9yv4krvviwn3qkrfz	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:25:18.260404+00
ej7ipmd0vmm70brioqvhukhplayicnf1	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:44:24.731011+00
pw2l88s91h3f2tfqch8on6mzvk2z3fh7	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 02:46:47.845365+00
rvx39l4tbpanpzsdfvl0ojkmmo62x2jy	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 03:36:08.85349+00
qnxbln8wmwve2od6ntzehef0521crsoz	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 03:36:36.936733+00
1dwp2gbo98446yceegx8mmpnhwg2mrlr	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 03:50:17.455285+00
n5f6dchhi2dggztoyidiet0f7lk556zp	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 03:57:35.129991+00
hacga6grbrqvvl2s4fzstun8xtzy28us	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 04:13:58.785565+00
c0u2vtbr5rc6cvjuc1fl71rfrg71anyu	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 04:14:29.871525+00
stvkjb63m5kdjql37d97ba32dil7za00	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 04:15:06.478048+00
jdw3i2lwj2lcy1bxjvpf1kucaq7x499j	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 04:15:09.943394+00
9xh8s3a5sgrl81iwqrc1f6592p2w9o30	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 05:56:42.500834+00
2oip2o93i1ib6ps8ogfbwahffaymo74y	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-11-13 06:13:55.954601+00
18p91quxh9edak24gxjm2384irf9vaf2	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:33:03.29335+00
klc2nl5y9qigqdzm1yu92hzuqm6pb0x2	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:33:17.361292+00
t5o2qdu2a17s3q3bqrd2759sy16dk7yj	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:40:42.611229+00
np5t8ybij9yr66dcryzdns2tqgujbdk6	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:41:10.294165+00
78wij07ipnbxjzurej6uv6gtppafoy1x	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:41:12.718283+00
u9qqtt9pz0vyufbkacnrthi5hqpwzw1o	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:41:33.278353+00
v8yrziyy5b9pv6xwjtwld7jn065xrg6t	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:41:54.739748+00
lgylcyrf1qvsk41n5r8e4xowuon519d2	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:41:58.021543+00
d9zq5qk0kql78qej7p6jmlzzr2osyu6c	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:58:06.439253+00
sbjgf08syscfksvcyfsfz3m1et5q6txa	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:58:07.997181+00
4s4i98f98lnmy0spbc1wojra3efmf37d	MTE2OWExNTRmZTJkZTdkZDA4MWNkMzRkZWQ0NTIxYjdjZTYyOTViMTp7fQ==	2023-11-13 06:58:10.644153+00
9uvkrez44vty6jgvy6jpdso2xbrss6jn	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxMqQ:Q-F1NID-1bNznzP9Pk3mpCzfwe5C7a_uEv8l_2Q_xcw	2023-11-13 07:37:54.743802+00
vave1k1tidfk86qeh7327cmps5y1c91x	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxMt0:r89qMd5tClePw72_-V53Z9kHxFYX2bHxLSPR3s8Gqxo	2023-11-13 07:40:34.742911+00
4r0s6enhhvyot2mkqrmbfnipbgjp4xmx	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxMvn:rarcD9w8wzwQxxhBrAEVFGlPpXAKBdndQMz_UsLZTDE	2023-11-13 07:43:27.962171+00
ranv3kz8krfvt2wznxgwscbsbrjmlz52	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxNob:caNvz6Lc_8YnhbhM6L8S2itxb9ADHg-UyNviJU7ydI4	2023-11-13 08:40:05.599577+00
izujcrbf0djdpruu3zeamcjz6wg1t5qw	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxPGc:wgDjf0AN8ls61ekI8QmSoTCXUAOZ8zWfHQguQjUe5oc	2023-11-13 10:13:06.140466+00
9538pgi1rc0h96xwgbepcl77eyskzwgq	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxThW:ThHW4mIpg8hUrVgLDorI2Wz1tW1EG9ttwaRmXKDL7kw	2023-11-13 14:57:10.753835+00
1t5i5seup7xrls023wcdnd8luntlkwf2	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxfCz:Cp3rZ5HEC1Ms5LfhfaUStzNl3Nkfo3mJ9hi3BxmhOY8	2023-11-14 03:14:25.285663+00
sgej0enxjwck88uz6lnseepz8pa1p5df	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxhlO:eOTHG2zRpr16lAhRA19yConff1qo9HDKCvpKEfWD1Lg	2023-11-14 05:58:06.330004+00
9sc39ykxi05vni1l7v49sl2mp51px1nf	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxhm2:DE9DajwVOai39CqYzH50sAKXoMCUsCQGNNqS0afV1-I	2023-11-14 05:58:46.308627+00
bniimu4p371bic9nnsnilfmel6ckfd67	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxi72:Pcpimx-LXDn_8zQ-EnXt9YNhpymm6f4xviv1_6mbcZU	2023-11-14 06:20:28.329015+00
lf286b271ft1bcm9tqqq2gvy6p5g8ml3	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qxjgi:aLOInW2zw0sqvPd0VoeyUHrJiE2LQKtT4jceYcqdGbc	2023-11-14 08:01:24.687641+00
mnuflrywza7rzwnx4o2l1mi06gspwy7f	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qyQnO:h96-Ydg575K7yDWlpFdNDbTdK51SCbgRJzGBJnTbsSQ	2023-11-16 06:03:10.062862+00
e714c8qeo6595aioyma3hzckiq7w7mxb	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qy4OB:UhSpOvFZowVlYRCHPUkFSG67DXAtIlgL6AWZx9JSODA	2023-11-15 06:07:39.657579+00
4ep5ij7qdvr2kjzapw8lb4dtm1awqd58	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qyRdJ:UWvmnbwrHnAFtAfsVF9cLCUdrqcu3zlDXXfyyADKLyA	2023-11-16 06:56:49.603197+00
cp3syojrxvyrtvfv8qnb4zzwsk1wicm0	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qyCwg:GDutB3YLG9qMOq6mo3r8xE7gZhNjI5CT4FyIeJuwZp0	2023-11-15 15:15:50.848228+00
hseirpery0bji4bs6i78wf1f6eoozn8p	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qyhzW:N3FGRCg-09cat2e_PVgK5hNghcyR6xjQ-3cpqKOWhCI	2023-11-17 00:24:50.274773+00
ucqvvsh1e6j632woi66jwbafarc2hudb	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1qyG8j:A5Xwv_NesYNUwfb8BR1M3nmio94l0B5HlMgCCAsl3dk	2023-11-15 18:40:29.198252+00
1eh7b8jsrtmt90f7gi4vxzj0n6656lhg	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r0iIC:bJQSXF0Ufuh9jFJfRNc4c5AiFbv1Ryo9rUu_RaDZw14	2023-11-22 13:08:24.078676+00
275wdxxmmx0xwn829o9bk6a031to9fcq	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r0iwv:XOPhzqkGtvqQIsMVTtFzsfhizb1hck6ItIbljRtLPOA	2023-11-22 13:50:29.541158+00
snknkixal8jlkeps50ne1zjn5s7sglt0	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r0tjc:XAhjPA_MPWDqn4DOHj9pG79T1kV5tnMVbwqO11wsEzM	2023-11-23 01:21:28.304529+00
asbr41rva9k27q7kc7iu2z3bhm4m02nv	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r1h12:3o41fjUUKMEH0i1NPko1KX6_vA8wTpr2T-Y7kcMSYmM	2023-11-25 05:58:44.149773+00
uit68j30tmahtgcqiktebs427cxdq2ns	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r1jip:YDPWbAU24zimk1kFVxIx188skD2Jg31LAr2hC6JvH1E	2023-11-25 08:52:07.56106+00
x7h6u8oqo4bp0hv52f24nt4lzviml4xs	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r20fa:qm-s8bueePCTu1SNvkPKmFXNHeQdqZ9PNvGmkaXu4kQ	2023-11-26 02:57:54.741502+00
qnq4jiatrhg7fpvihui3z48a8c5rz9ic	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r20zX:NQq6UcTQWznyC-ebspB8VnR3lx4U9DnVcpzmUef7TM8	2023-11-26 03:18:31.097578+00
t28z473375piv5gw0c7zjaqzlsgil3qg	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r21zq:SDhEwMDuCcP0PbaLjU7x4KOQzMCchsXGotgyr7C1_-c	2023-11-26 04:22:54.145962+00
6i88tu2lmuo6tezh12tv7krhff0uqz2e	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r2NtS:OS7X2N8ovItltYyjg6VJ9DQwYAsyJtKWh63549cQAAs	2023-11-27 03:45:46.878669+00
polo9fsuuur7ixeqib6vllik0qws00rw	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r2OPS:-cWYJbxWAyWhu3Zy4eZvL_9upK5NHFh4_o46yORGE4c	2023-11-27 04:18:50.627151+00
njm0o0a1bloqynlpmxc0zl7pv0r8nq9c	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r3Abt:l8BNefb5xEC_RLoNy-bN5AB1pK2B4nDggw58eB5ab6M	2023-11-29 07:46:53.71136+00
61tvywlke1jdwj5i89rhrdqtmngbka3o	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r3Cdi:yebti2ggNqI4_pR9Qv28RQWEokB3BTGYFat4aJ4k9-U	2023-11-29 09:56:54.409245+00
g5bmi9isebbt1onq0jiftldimm7pqpk0	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r3RpU:ni7Q65lV8Qb-WRAOTvX5-enShMz52NRC-TF650VxTL4	2023-11-30 02:10:04.5378+00
vxkdmwl7bytaxynpir2mvf72c8c3c9xz	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r3Vjb:pKHeWnbXC5u6QoIYITWL0uwaRehD-gN-CzTWgrxiXPs	2023-11-30 06:20:15.080308+00
qsw7mxphg1cr9uuvp27g5l3svl738i1p	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r4Cop:fyFdopf2P3598h2Xb9BLxQzd_-ZfPkGt7HMiaCwvnwA	2023-12-02 04:20:31.338317+00
dcbjd5qbp7tjnly447ryf9gzbhp1jgci	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r50Oy:qYeZlVnpOA9xFf-CXjr8kB9Y_DuTlZlaUoMaZAt8YXo	2023-12-04 09:17:08.738195+00
yiav8navosbhba6l70zbk2e9yywmm94a	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r5ey0:X2m3KmcGE3uYPUDQ2MtBTqdFv5ctolso4XsJAqLsY2E	2023-12-06 04:36:00.859088+00
fqph03wj89njs6b9v9m0914u2uenycl3	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBu1H:9-BWQRdiAZjriBVOhekVVYDIF1TC3O50RKBtJWnNP28	2023-12-23 09:53:11.927516+00
n4r48qqtnyojfntnqd1mzcsanx8qdmm8	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r7Vl4:dBkYLrV2qcZ7yllQC530NgeOwsTLloqdk4d6GzQK8kY	2023-12-11 07:10:18.482001+00
xr5pi93s3v32y51k2w4zpjkwm5gvwaig	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r7YUz:S0kialeSLnJ1wxilAlx5LMKYNyTNiN0lcEF15wFaHtk	2023-12-11 10:05:53.038836+00
s2e0nr7qbrsxeiv1mtzh4z8nss5q6jiu	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9JPg:rO0gHyiFuHTm_W5WA-8JOjj-Q4GaclelBFPAt3z9E-Y	2023-12-16 06:23:40.794558+00
abtmfvy73o3figinijyfetppkkcc3zmu	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r7sec:StQhGhR7p35dGhZFD163dO2iEvOrI4f1MIjwtcNgYHk	2023-12-12 07:37:10.528582+00
5ne0ioiccsc7kbu4tfc7voes8xjx7omu	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r7shf:tn6LviEZ6hSKwOcd5DnSL_CmIJvr4wZIiFUKP9ytibw	2023-12-12 07:40:19.344803+00
0wkh27669zrv9e2v1bnijih6l74ycwwb	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBu1c:PHhn2v9iBRe7tFsOnsbPzBbGi7zGuLyOnB6ZZGGJZPc	2023-12-23 09:53:32.507656+00
nz1tpzn37is7namdofwduz1s2jknfdyr	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9JFY:N3TjkWAHcFu1E0cl_XbYlCyrnG61vccpnSLsQtD3riY	2023-12-16 06:13:12.219171+00
4kgcw2h6f7upwqs8zq8kdlw6hm2ofu7n	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9JLN:HcwNS0n78kr-itJv8srDlAyf3nGUi98WN23ij_USKus	2023-12-16 06:19:13.74894+00
a7ubxnhda7og9a38k4pdfg6q9mryfs05	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9JS7:M1Dx2qgxIsI7Ln8gSSsNx9DFMkPJdNBmLDm_QnmUWMA	2023-12-16 06:26:11.686655+00
dq8l3dpzt9jrbt0c8f99okyixnbpmw9o	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9Jns:Foyuh75g0sAzCdy8OsFGk0UJx0ER_kjfqe35m2LHAvU	2023-12-16 06:48:40.995235+00
yed15lvn9ull009r54638yg1rssywg1d	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9JrN:SH82k9WY3vZGAu-m5HzbIa9Q9eNxLIsysbFDXj33Dsw	2023-12-16 06:52:17.840892+00
7v43g1r95uy5p51ljk1v6imh69wobu3s	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9K2j:LesJxWyv43K0rdbMLYXdI-XGHGPGfCT0cgaIcu64sqc	2023-12-16 07:04:01.378524+00
fgr5xvuhtsrq1zm26vw8pn7djq18sxxf	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9K4h:rNCQ4dc99gPJbRpYj6qgWdMQVtPRrpwdj7jVtGQlbuQ	2023-12-16 07:06:03.672182+00
t9gloxoqp6hf5ibk8iq0uslclqb3mnjm	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9K7l:RzKKfcJE08-uFyP0IecsVWgMhNhLKHXN1TNqbP7ICK8	2023-12-16 07:09:13.168906+00
1n74qqainmmupvv9lunqatf985yb6a3m	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9K7t:XAy3CNHXuON2B2EstekBnCzARCe0FAs3WZUpiYFjW_4	2023-12-16 07:09:21.639409+00
sxnpnc62tkymntosy49tvxe3anfmtqmx	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9K9Y:xxYWuQ5MbZ1ijku30LGRVAvwTNH3E1mr1b_M5_MFx88	2023-12-16 07:11:04.215888+00
h5n425kw3txb1nwrrhutx2ukuc782bkn	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9KAC:dJcKPfFbyPrNBBWnLVQDR-IKsXufCEJUUS3_PzlLtTo	2023-12-16 07:11:44.339859+00
d3vy0aidrykzm58u93g8196um164n75e	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9KDV:vyUFj8j5whQdeE2sTDroRNTnswm2KgVeABkMFA04ZDY	2023-12-16 07:15:09.01425+00
ungu9piwxtvwj3kwbf5plb5pljmg7nkk	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9KID:NrqMh2ZpFj1dTSX8UbGJccQp9bRUNTzcVjzbvJXLP_g	2023-12-16 07:20:01.929633+00
ncy6yah4h4eak8y8bffnd8w8w9kqgb9m	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9KJM:1U0bu5ImR58jkGzFp3VGWqRU9PNtLr5pLqMKxWMF1uI	2023-12-16 07:21:12.132548+00
6om3fbuusb26jxwcpnt3mf2do7dws4y4	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9KUd:22wc8gTQhhkNmw7kbF4G-6OGNW2tJ4x69rJcxKl2udo	2023-12-16 07:32:51.172019+00
cxg8ivxi7xhlm24excboknscmprthmkm	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9yBx:xj1gFAjpLbvYbEt1TgOB9pSFxMNw_SUroJhLtSSd-C8	2023-12-18 01:56:13.98505+00
hbw3jkpespngn6gtpo62k3j7nsty0t15	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9yDi:sOwwI_4ZQ1gJogWpUa-aXGjQ_aWPu0TRyRbaSgdP4bQ	2023-12-18 01:58:02.386411+00
qkmsuo3bmul1xfyam21cphwi4nuhks54	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9yFn:LfPyI25oOms9GkDGj6W4LasWqlWDqX31LM9CcmYgW88	2023-12-18 02:00:11.706288+00
4prd33z9fgfbtk0g3kdosdhoeykjkr49	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9yPC:a7y4572KleG2snCZAHl-8nuXxZzF7TiMXLXmakb39ho	2023-12-18 02:09:54.986684+00
yrm6wobuy2lme4bynsjgtde8045but8h	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9ypP:UeyDGnIvGVCoN63YDoO8CXljCQyqk-PUAVIRgwBuCnk	2023-12-18 02:36:59.958079+00
vluy07n7x0balrx4zn7dvhtr71akigh0	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9yq8:5RkdL9HJvat0bfn9duFJnKnvYetCYKZKz3EYcHhiYW8	2023-12-18 02:37:44.403398+00
9vrr9dwpru3b3nhm9n5n4rzf2qw82ez0	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9yqd:d5mOklLaq8jI0RaCE76ObuCjwfcjciGog6fHUF3_CMs	2023-12-18 02:38:15.727742+00
08pv6z02qepczolsd5ot7it3w4a3aiqi	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9z0t:ejQeeln-Kk8-NSZBFi3nuMNsRtvtt5W7VVCQOkVMQI0	2023-12-18 02:48:51.773444+00
jgc65d7sk1q1c7gcuwsyvxbgj4h4ol8q	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9z1r:_rVrKZELAOAof-6GsnDuBhmfdzZwq41gziF17F4kS8Q	2023-12-18 02:49:51.491414+00
c3e0yuhjfkbrykbt59gpj12knbqc2788	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9zGH:wzPJCErcY3THbJFGBVjRXQW4MZ_I2hSUnw0ut44e0vw	2023-12-18 03:04:45.899772+00
0mhdi8zp7wnd5t4pq0dc3gco9um9pobg	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9zoz:OkIvSb8mQFAIpxxPZqczGVd75rpNt_FTVfvw2sVFPVA	2023-12-18 03:40:37.324409+00
20n4jntehwpudczfal5jhfkkbcqerp3z	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1r9zpB:aHVWkYymeX4bBkQ6UYgMNrdrCYBTGN8yn9QJTg4tdcs	2023-12-18 03:40:49.314864+00
myg3h3cs3uhlseyrrrvh9tosqtin27sr	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA04B:kX9Fyq683Ri6RFyHial1Di4Ppq3lz97ZYjpze67bOsg	2023-12-18 03:56:19.046915+00
wml9zvb03z13aobe3gjsoyv81eyuodmy	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA04m:Ub6R1IQDKZte9GBoCyECOWlOAvGpaBXZ0eBu67e9DfY	2023-12-18 03:56:56.605927+00
781roeo8w13snvc8a9a94m7zevmbb7rf	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA06I:EAn2YMfTE-dx5lmR1o4b1Je5hqOYpT9iEnxUhzBDYV8	2023-12-18 03:58:30.912751+00
e6k3u4ipkty2mpsvinf9h645yt8g8qd1	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA0B8:TBWFQZodJuH9kPc4ktQYSNhRSjX5Bdy6nDXCwItrmUE	2023-12-18 04:03:30.037785+00
38iljbbv2xxnzyrpauo5plewp00flo2n	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA2V9:3iHCfCAe_En7NvMlN7mCAt16AEpJw4XaUl24Sh7vzLo	2023-12-18 06:32:19.733736+00
ewij8xivsethl6vkhw183p7z6l2k2a4j	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA2a9:F0yRkElbCagcJw8In_b1IHj2McZX_ph1TNKwhePDAoI	2023-12-18 06:37:29.512603+00
g8pdrdyizvu411s2xmypc58vnbbstcg4	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA2d0:7EqJoDyq399Pw_-ut07TBfVXvMCBnbQsMTKIqGsiDAE	2023-12-18 06:40:26.913797+00
b1cqcd8om7el1gngegize9gagbimyd5r	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA2dR:J6uLI2p9hXI381sEAFYef1SFKgDYmPxg3MLgHQ6o_mI	2023-12-18 06:40:53.954484+00
qacvlf2zrivhgg5jfx267o8gsweres6q	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA2i6:IedecwZyqOIgVeHaX-m72a8KUQ-ZcUlu6IOBtq5lw08	2023-12-18 06:45:42.668726+00
jm1100prjq1zpiub7voxc77eztbjemj6	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA3Kj:HRxJbiYmeqK6vJ6iAq9g8PcWlbAOqooM-GPH2_Yi-8c	2023-12-18 07:25:37.163441+00
pl4ks3nafml2hsnycgrwmlvlmfk0nyz0	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA3YP:8HgT4jFC-Mbh6dsmiFkWnUBhXTdKrlEWtFNLWEoSG1E	2023-12-18 07:39:45.114334+00
nxdjv8lmpsdtackai3rrjz6bb1enwqc0	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA3cY:cPGNIw7iGzJxSk-2BKqKoQGWlEzKkSjrVvMN0e_DAnY	2023-12-18 07:44:02.919535+00
kgjq36q595rq5nuoovdb2zo884rb1aax	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA3hB:aJyHYafj59cqehb-Buwsdi86Wkpq9lx2ur6_Pq66Sao	2023-12-18 07:48:49.969643+00
54q06fb0sl54nwk7ebalobqff6wvn9ud	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA3kl:XCiRmvyRZv3BSFULRp6CyTCOHys1Jh851mLLIwvRrmw	2023-12-18 07:52:31.297849+00
xw61xfwqiiiqov7dlmkcuovfwjylabon	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA432:J2bYGUp1MCIae2OxMi5QKfBJSIXobmJqXGdZh6uNJOM	2023-12-18 08:11:24.873834+00
n8mgiljn19li7zg5ddmp54r6gb8tbqji	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA4Gf:_ZQ1sTV1l-rdhafpici0csUF8i25qvBSykXS9TzoMIE	2023-12-18 08:25:29.101253+00
0kydgg7d4adh5cpdx1ejtxtgucbdbo7q	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA4MH:x9_cIORWHyNAJxAp1ggtlRz-N-n6pafxdmJMn9wPnCw	2023-12-18 08:31:17.582152+00
oedmusbjfj2gmvynvd3to7up6fjcsjdl	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA4ah:Hx6BEOtZZE-J223PkqyH0x5gkTBJfN47SAHTUBzUMbg	2023-12-18 08:46:11.240783+00
s2tp7ohg9ti8cvm3btkk6p2pxevtzjo3	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA4xt:Vl8XOuYsZn2tDAvQAuKbsmhoj5TEATQxvg9ta0p8g9M	2023-12-18 09:10:09.790654+00
9dwr2iyk7yh6114x6vnhw2x3ej3mumx6	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rA56M:G5OJCk05jTNUd9CKobDdnfR4P1357BA71qqVWy5bYOo	2023-12-18 09:18:54.772012+00
vu79led3z1fytrry9qsz0homwmg8j533	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rAKOi:ZE6_4mBGMhwlF1pfinrv0I1du7kH0n-oEarsl03pa4k	2023-12-19 01:38:52.868344+00
w3q8xmcuf0qwbwmzga99dnnouzwatl59	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBu1z:LI2DjRmmIN2h5DpY2NYKndAlfFOuJk2FviMzH5quEn8	2023-12-23 09:53:55.494305+00
ohr0751sp0zsrirj2rk7v954hbx1ve54	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rAMw2:FQVPe4SzYZJxuHGpJlNRqUTFi1_ALGBjsV6kqC7inBM	2023-12-19 04:21:26.593514+00
3a1znupxtdazajnzxkap8056r56fvusw	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBu4A:jkkYnUMrTv-MBnS6GtHRLOIHyZyhLVPiil7v-k8yeeM	2023-12-23 09:56:10.720046+00
uatcidkmwy42r0bxbzymc6qjqywatlob	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rAMxi:rmoc2kjE9D5bM6t33eTq5Yz-YdEbGM5Jh9vUSf3C3Oc	2023-12-19 04:23:10.258933+00
rn7mq02hhssg8qiz4pyl6njt8ew5b5j8	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBuDN:1JAD4LM21L4JiJ_lb07RAOuuzfPbcm-tQNyXaifnc5I	2023-12-23 10:05:41.042144+00
fxq5dfsw2755jyxc6i28ndldmtne9m4w	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rAhnb:7-Zb-AwK2kZ3V_86atyKFRDDpKxoXykgGgi3xgwcz9U	2023-12-20 02:38:07.315043+00
trabvah4kr52iy2lxsxxwh7ve805bh9n	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBuFA:hwe7ghBhjvVLMsirqNQZwQe1tIvxjxaD1mSIov7my_s	2023-12-23 10:07:32.988987+00
4cxbrjl68ssnk5tj1vj5m18cbaywwcj7	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rAl9Y:e7GMSofsneGFom7mqFbOowO9mXSw_Pc7UeaAEvxG2ec	2023-12-20 06:13:00.773172+00
5h6i08q7xtppv4njufp5twpxwgcjarai	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBuGk:POuc6Fe0OBx3OosmcWa3QdEnIvFfcPLjMKGbquMeZMY	2023-12-23 10:09:10.925304+00
ipyqff78j5b1v1upso59ew9al74n9i8t	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rAlOg:8YZ253Ulr9Op1iQnhVVrZwkl_l-n1MhdMDRAhTkMmC4	2023-12-20 06:28:38.153273+00
mm9t3ricim3bh1c65yblcw46242avhvx	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBuPc:p5hQw-Ef6nnb9QnGhC-WW4YE21bZoah20eHJGCOzzRA	2023-12-23 10:18:20.031995+00
3qjyeaahkpteh6frle1rliujic10k0aj	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rAlYF:QPCc0CY0KtSOMJ1tkLMkmFKfXuimpmb2Ik55P4VBbIw	2023-12-20 06:38:31.911483+00
a8rfhis2zo4rpml7u1mm03g9gdumvvft	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCZut:u59TdZy9wfo_egHd8Unr6zf4lz9MzXWsNJ8lfTQCwB0	2023-12-25 06:37:23.195622+00
v5ou5s3ly1ug2tmf7jegh9xwnqd2tp34	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rB9uX:2sMa2FuFgOpquEeWUkUwxtGwQCjnFJyE1g-xUe6aQvk	2023-12-21 08:39:09.867345+00
4nmaetrc3qvfjri0z44hrd7awgoz6sm2	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCZyK:kZwV2q10_pZ5kdVeNiX5I0IuI2Dug7H2yH7jIuOQoBU	2023-12-25 06:40:56.366395+00
0qc5bqj31iftvb4u43v2wh0rt1pl5pq7	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rB9va:lpt7lfO-ljO0eJHwfczVAdB3AZV0NDPxV1b5rBhgqc4	2023-12-21 08:40:14.211893+00
zto6tdu8swpkwuyypcelxpgikz8uzqpr	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCa16:sqx7eYSZ_srMDWSEpTamU42q_SxjMGjPUqkAKVEe7Kg	2023-12-25 06:43:48.206972+00
7tukavo2pcr7zcyivwndhaf7r5djlt3h	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBADv:wHVqQn3H4CqrxtS-QEkX9_QEacNxH1yCfq1E9ZHZ5us	2023-12-21 08:59:11.507003+00
rqddgknqk5lpgyo3htk1ja4h0ktj5e14	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBAGe:K77uu85ZhMyQzclrV7LmLu35jNfMwlwH99NryRNmbIQ	2023-12-21 09:02:00.343077+00
6jr94eyxt5ay8jvdro6lhtsinb7s0f10	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBAKC:cr8AP83fzWajyGytZwL6_D__xHczr3rBot3nXIEbTug	2023-12-21 09:05:40.940633+00
a6vyb33ryyso5jj0dw6ppsnhndn7oh1c	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBASj:-ueE2EQQhUrAZsepmGyDCA7fjbfyLEKBvJo0Ru5jkDs	2023-12-21 09:14:29.029467+00
rxqcmjuovihquvxxdmc1yrc8ccpfnfjr	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBtuU:V07exibYkWCReJuOKPZSnWUor0m8UygH6yg1tcWRY9Y	2023-12-23 09:46:10.284994+00
1ncyj2k0a31z5v2oworlr8osle62vpkr	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBtzn:02TsUkioJDNl3tpH3ZsuxLdgL0n7ji7KqVwD5XamSxg	2023-12-23 09:51:39.008316+00
43o7km57gd8e0mfpael723o6650gd05t	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBu01:Nf-z2xHOKH7rzNOYD5nURm0HKpUuGpFlu5MU_FKjruM	2023-12-23 09:51:53.093715+00
j7vss4t7hbyeyehrz55qrhkh5w8i5o1y	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rBu08:HRpHyYJKZGDWIDSMs0_AgFcsZe4G-s_Vc0X9LUeXhFs	2023-12-23 09:52:00.612667+00
awx02v7152cgd21shbc8zr0tr2ksid7w	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCa4j:N_Z-4JAKyqa80PA7bLo0R1Yn8Fextz0taykvI-dE07I	2023-12-25 06:47:33.864876+00
wldupgclgeakt49u00ydo48ewk9l8akr	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCaEQ:BnOznq4fxTaSv6OBoaX0bi8JcizrZ2EAzOSIZaXlsjw	2023-12-25 06:57:34.343889+00
4xn5frqevg2nynoqoftdbcawp5je8yku	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCaIm:kizmSzEF3qGyPElddHFAcaIUTTezEPJcrTL5quaXKzM	2023-12-25 07:02:04.126399+00
4m5jge4x9zlsyb7lj6h0td1ajxyf8qjl	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCago:LpFfK4pVCc0NxyKjZKGytOzvgnzI3yZahQpm0XF8fNY	2023-12-25 07:26:54.624776+00
vdeow01g5nmutyovjvvwyqie45qu7exr	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCasq:Q3E2uu3YOAZarOJtPVCWxS5gtC_3mw5C-zpd5bfF6NA	2023-12-25 07:39:20.25157+00
1urtdhn91lo9cng401puyndejadh2vk3	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rCbWP:ptTv28seRwN8mWznrllWmTQY7TH1M1W97sTgUj2vnaU	2023-12-25 08:20:13.008049+00
sa74qltmkg6tg1rdc6fedzdm3qqie0qa	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rDfDc:iY4rFk_OknkAL7JCJ6ZnINoX0QHEojzCig6KEr133sg	2023-12-28 06:29:12.640301+00
y3cro8m5pbzna9rjj616mqybac2w52vl	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rGEpp:Fs-O0m1l9pyERyRyDUwoS4XxyYO3nJtsNhJxZYX3Y9o	2024-01-04 08:55:17.123904+00
v3v2m6q82q8jhufg0nu6ed9o9f9x14a4	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rGEvo:IzRKDY-d9TzDO_aBMnZuU2N0PELaT6AI3wh3qrSX9xo	2024-01-04 09:01:28.378321+00
ghhayggzdtw2xpuilyuzgz5cpzsu0ugv	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rGExp:RW61bjarOTy6_eA7PQ-iKG3D76bngc2wQB6-SeLoLEI	2024-01-04 09:03:33.669179+00
9s1z342kqc4aj40pzhf4hsxaoafsmbov	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rGF8k:QIThxC2M3gr1CCoqZK4Q1ItgoIM3HJh-MEFqo26ZfuI	2024-01-04 09:14:50.316663+00
plcq5qrmy5hhn7jiny5j2sgdcxu4lecn	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rGFAo:1D8eEbfCcGYh1gIYsnKY8SySOieVQREP3zp1eaLYFVw	2024-01-04 09:16:58.021615+00
nubbk9z69ov8uhf85fkzb0kydwhus4am	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rGFDG:z1oCbQeSy34vPfbrh8Mvtvya3aFp_r3c6PBX8fpeFpk	2024-01-04 09:19:30.006294+00
pano5ybd243cu9tojoesewljhg9ulvpr	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rGKeG:cJihn6hWHWKCd9_1sq54mH06VwKXmm0LbTVHcI_cIB4	2024-01-04 15:07:44.185056+00
nyj6f7u1yksvyglrw07f8d65ptixip8b	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rGqnS:EgmyhSj7o8b6q8YaVPvrEJ9jr0yVZuyW397SQoGIels	2024-01-06 01:27:22.746833+00
rfoawl23dd9v8elr6gti999oxkfi2svq	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rGr9s:eMlurk_lMTs1ZmfCehF1kGPy1XEVvyjUeYjnX2VYQAI	2024-01-06 01:50:32.215735+00
3e41as9800v39p1fd5bx21h8pehuy0c0	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rGsDQ:SbQHRAWbfHdXfB8UA6SZ46IqR2Qbvad20J0EGDD5ylM	2024-01-06 02:58:16.727365+00
rpcu1wqzcfqgrvk0i2z885yxpjs2u9we	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rGsPu:MIKngLPAxsSEhC3kmjQValtNqog0L3Vn82Y0AE_62ZY	2024-01-06 03:11:10.05001+00
zp9s29osj7n7gezxof1svelz17ywciqn	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rGsfi:I1n8yQAY8_aSy0GeacVlC2AqJZeQ_8aNMmJg9p1Nyok	2024-01-06 03:27:30.376443+00
uvqjp8qzik7n5hjgh9ugd4pl9mb59bgi	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rI1CC:ir25_GiTO4udYgmTDOFDEG0pJEeD5Wkduh7bfs3h8Ho	2024-01-09 06:45:44.665598+00
i2xj9egq6ujqa3cxayra2bdt83ay5cdl	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rKYcd:XFKMNFkW9mAX-pu2IhXZG4uLpDyRNfM0pzbF16TUTJA	2024-01-16 06:51:31.379948+00
kf3oywyoke8izp5lyr0jolu3o8whwpvf	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rKvX1:aTJLUlXcHVkZ1Xx8Ka40l5p270yVNc0laWZEpGy9ZYo	2024-01-17 07:19:15.05494+00
193xhvouqn2a13o9ifhduth0x29kn685	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rLf3b:1Pb5WRp1QrVML9pkZAoPp8-IOXE5VO28Rl4xzBAtTiE	2024-01-19 07:55:55.538307+00
mcban9ae29g90g8yrg79eaecwxaxfac8	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rLf6S:sC-mFqGdxFbUQPMdyw9YiL2_139BON7eX8vjJYagADk	2024-01-19 07:58:52.116284+00
y6bu0dssl7lxwabiewyqwzao25pa6npc	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rM2RE:TiceTLpwppgblbAsbY4M355lBwMTnVpztEQSSzKPg1k	2024-01-20 08:53:52.351977+00
krjtzaws0rb3r8ulxhm5wop7cz18iw3r	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rMmMN:J_LCEYm__ZxyzYDPFGMjhWhsRluTQG7rFq67mjFrG1A	2024-01-22 09:55:55.818205+00
sr9bemagjp8504yvmjgm8kak608l6tim	.eJxVjDsOwjAQBe_iGlle_01JzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZkBO_1uhOlR-g7yHftt5mnu6zIR3xV-0MGvcy7Py-H-HTQc7VuTc1hVwipSENWQrdoIlBaIqlFWaK8oJFLgySodAiQBYEkKab13tbD3B-qTN2c:1rN7Wp:29P4EUSx445OZaXT8vdl7F4YadqFpJA1vk9-xTjU4GE	2024-01-23 08:32:07.134069+00
09lk6gc7lnm7bvwx9gaf87zadvjcirjq	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rQMwM:uCPplm73GhmygXB7frpUeAPaXNrrp7EKBSuUsMPTs1s	2024-02-01 07:35:54.760946+00
5o45cqndjwi1hbh9ms1opeh7cxqdwa5x	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rQMwb:EfqGNueA6OFAXfPOWTHmoY060m10-PX5NklPG7oL_ms	2024-02-01 07:36:09.821561+00
7m39rc93wfz5hctciqhjy1cum3o6b9k7	.eJxVjEEOwiAQRe_C2pAOUCku3fcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAqtOv2NCekjdCd-x3mZNc12XKeld0QdtepxZntfD_Tso2Mq3xuwIe7FBwDsLzgWLyQAZhoBCQGfpPLvkTQKHATlzDh2EoQcaEK16fwAWPDiA:1rTe6t:_MRBHCYYoFxk3nw3beneRjzzJGPIs5zya1qM-48omjc	2024-02-10 08:32:19.857671+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: favorites_favoritenorcharge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favorites_favoritenorcharge (id, created, updated, title, user_id) FROM stdin;
1	2022-08-12 15:12:34.412948+00	2023-11-12 03:11:50.042367+00	My fav	1
2	2023-12-21 09:16:29.41458+00	2023-12-21 09:16:29.414603+00	Dwi Favorite	13
\.


--
-- Data for Name: favorites_favoritenorcharge_nocharges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favorites_favoritenorcharge_nocharges (id, favoritenorcharge_id, nocharge_id) FROM stdin;
6	1	177
7	1	178
30	1	201
32	1	205
33	1	207
34	1	208
35	2	177
36	2	210
37	2	211
38	2	212
39	1	213
40	1	214
41	1	215
42	2	216
43	1	217
44	1	218
45	1	219
46	2	220
\.


--
-- Data for Name: games_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_game (id, created, updated, name, caption_title, description, game_type_id, host_id, link_tutorial, "imageData") FROM stdin;
7	2022-01-10 08:43:39.333472+00	2022-01-10 08:43:39.333487+00	Lianm	Test	Good get	1	1	https://www.youtube.com/watch?v=dUoU9I4zD3U&list=OLAK5uy_mpQhSrV2uGWGSvyGFfc44Q0nXnvZHlxcs	\N
11	2022-01-11 02:20:26.336724+00	2022-01-11 02:20:26.33674+00	asda	jhkak	asdda	1	1	aslsfsff	\N
13	2022-01-12 04:44:22.60916+00	2022-01-12 04:44:22.609174+00	Game1	title this	Lokaie	1	1	linkg	\N
6	2022-01-10 08:32:17.905616+00	2022-02-21 04:48:47.21157+00	Assa	Free on ubisoft	Lorem karoe	1	1	test	\N
5	2022-01-10 08:29:12.992487+00	2022-02-21 04:49:09.521661+00	Legion	Free GOG	Lorep	1	1	ipsum	\N
14	2022-03-17 02:06:58.173636+00	2022-03-17 02:06:58.173651+00	Nautilus	Linux Terminal	Conjunsion	1	1	http://localhost:8000/games/create/	game_photos/nvidia-compressed_MDWuV0O.png
15	2022-03-17 02:47:42.650628+00	2022-03-17 02:47:42.650649+00	Forza	Make Monew	Tut kenzon	1	1	http://localhost:8000/games/create/	game_photos/pexels-roberto-nickson-2559941.jpg
9	2022-01-10 14:29:23.320338+00	2022-03-17 07:35:31.29095+00	depan	Cpation	Nice	1	1	link	game_photos/20220218-BerchtesgadenerAlpen_JA-JP8988545599_UHD.jpg
16	2022-08-08 04:07:11.051071+00	2022-08-08 04:07:11.051089+00	Libo	Limbo Call	Nneed Teroimnas	2	1	https://www.1337x.tw/	game_photos/20220207-WinterludeIce_ROW2615609916_UHD.jpg
\.


--
-- Data for Name: games_gametype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_gametype (id, created, updated, name) FROM stdin;
1	2022-01-10 08:07:39.778529+00	2022-01-10 08:07:39.778545+00	Adventure
2	2022-08-08 04:06:07.160489+00	2022-08-08 04:06:07.160527+00	Arcade
4	2022-08-10 14:46:09.880639+00	2022-08-10 14:46:13.625358+00	Action
\.


--
-- Data for Name: games_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_photo (id, created, updated, caption, file, game_id) FROM stdin;
1	2022-01-10 08:32:17.90759+00	2022-01-10 08:32:17.907608+00	File1	game_photos/XYplorer_doH79Pn1d1.png	6
2	2022-03-16 06:19:40.90062+00	2022-03-16 06:23:05.083278+00	ok	game_photos/l-ny-sun.jpg	5
3	2022-03-16 06:23:31.452712+00	2022-03-16 06:23:31.452726+00	colloid	game_photos/colloid.png	5
4	2022-03-16 06:23:43.581803+00	2022-03-16 06:23:43.581818+00	oke	game_photos/Screenshot.png	5
\.


--
-- Data for Name: games_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_photo2 (id, created, updated, caption, file, game_id) FROM stdin;
\.


--
-- Data for Name: guides_articletype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guides_articletype (id, created, updated, title) FROM stdin;
1	2022-03-25 02:11:58.66623+00	2022-03-25 02:11:58.666243+00	YugiOh Duel Deck
\.


--
-- Data for Name: guides_guide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guides_guide (id, created, updated, title, caption, description, link_tutorial, "imageData", article_type_id, host_id) FROM stdin;
1	2022-03-25 02:12:57.724184+00	2022-03-26 04:10:22.377679+00	Guide Data Satu Dua	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	With now gimp new	http://localhost:8000/guides/create/	guide_photos/pexels-roberto-nickson-2559941.jpg	1	1
2	2022-03-26 01:37:01.895185+00	2022-03-26 04:10:34.599064+00	Guide 2	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Multi universe of massi	http://localhost:8000/guides/create/	guide_photos/minimalish.jpg	1	1
3	2022-03-26 04:14:55.433988+00	2022-03-26 04:14:55.434002+00	Tutor3	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Wooerokekle	http://localhost:8000/profits/create/	guide_photos/macos-monterey-wwdc-21-stock-5k-6016x6016-5584.jpg	1	1
4	2022-03-26 04:15:35.143487+00	2022-03-26 04:15:35.143502+00	totr4	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the	http://localhost:8000/profits/create/	guide_photos/pexels-roberto-shumski-1903702.jpg	1	1
5	2022-03-26 04:17:58.304718+00	2022-03-26 04:17:58.304732+00	tutor5	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the	http://localhost:8000/profits/create/	guide_photos/macos-monterey-stock-green-light-layers-5k-8k-7680x7680-5891.jpg	1	1
6	2022-03-26 04:20:22.630156+00	2022-03-26 04:20:22.630176+00	Tutor6	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the	http://localhost:8000/profits/create/	guide_photos/pexels-deva-darshan-1123972.jpg	1	1
7	2022-03-26 04:26:40.295159+00	2022-03-26 04:26:40.295174+00	tutor7	adadsa	asdakds	lksjlkd	guide_photos/Screenshot_from_2022-03-21_21-23-32.png	1	1
8	2022-03-26 04:35:54.427299+00	2022-03-26 04:35:54.427315+00	tutor8	ahjkashdk	adkjaldjk	lkajlkadjlkad	guide_photos/Screenshot_from_2022-03-21_09-26-58.png	1	1
9	2022-03-26 04:43:30.537874+00	2022-03-26 04:43:30.537887+00	tutor9	asdalkdj	laksdjalkd	slkdjslk	guide_photos/Screenshot_from_2022-03-21_21-23-32_ADjjxhE.png	1	1
10	2022-03-26 06:14:37.027545+00	2022-03-26 06:22:38.730443+00	Abo	sfdsf	asdasd	asdasd	guide_photos/Screenshot_from_2022-03-01_10-55-15.png	1	1
11	2022-03-26 06:37:33.126319+00	2022-03-26 06:37:33.126333+00	mask	aksdsa	adsadsa	http://localhost:8000/guides/create/	guide_photos/Screenshot_from_2022-03-21_09-26-58_6CBeu8L.png	1	1
\.


--
-- Data for Name: guides_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guides_photo (id, created, updated, caption, file, guide_id) FROM stdin;
\.


--
-- Data for Name: guides_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guides_photo2 (id, created, updated, caption, file, guide_id) FROM stdin;
\.


--
-- Data for Name: news_articletype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_articletype (id, created, updated, title) FROM stdin;
1	2022-03-24 14:16:49.519561+00	2022-03-24 14:16:49.519575+00	FreeF
\.


--
-- Data for Name: news_new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_new (id, created, updated, title, caption, description, link_tutorial, "imageData", article_type_id, host_id) FROM stdin;
2	2022-03-25 01:32:33.81016+00	2022-03-26 03:04:08.628776+00	Tik rol	Best Clock	With magnesium	http://localhost:8000/news/create/	new_photos/pexels-oliver-sjöström-931018.jpg	1	1
\.


--
-- Data for Name: news_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_photo (id, created, updated, caption, file, new_id) FROM stdin;
\.


--
-- Data for Name: news_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_photo2 (id, created, updated, caption, file, new_id) FROM stdin;
\.


--
-- Data for Name: nocharges_categoryapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_categoryapp (id, created, updated, title) FROM stdin;
4	2023-03-25 07:02:47.310644+00	2023-03-25 07:02:47.310662+00	Artificial Intelligence
6	2023-04-03 03:38:16.943414+00	2023-04-03 03:38:16.94343+00	Development
9	2023-04-03 03:41:19.53403+00	2023-04-03 03:41:19.534046+00	Internet & Network
12	2023-04-03 03:43:02.549939+00	2023-04-03 03:43:02.549956+00	Virtualization
13	2023-04-03 03:43:41.433081+00	2023-04-03 03:43:41.433104+00	Multimedia
14	2023-04-03 03:43:51.802941+00	2023-04-03 03:43:51.802957+00	Messaging
18	2023-04-03 03:45:33.035535+00	2023-04-03 03:45:33.035553+00	Personalize
21	2023-04-03 03:47:17.769448+00	2023-04-03 03:47:17.769465+00	Database System
22	2023-04-03 03:47:40.837301+00	2023-04-03 03:47:40.837316+00	Application Testing
55	2023-04-26 02:35:19.42359+00	2023-04-26 02:35:19.423606+00	Utilities
56	2023-05-03 01:01:09.428579+00	2023-05-03 01:01:09.428602+00	Game
100	2023-11-01 07:50:43.466353+00	2023-11-01 07:50:43.466366+00	None
58	2023-11-09 08:21:34.136697+00	2023-11-09 08:21:34.13671+00	Security
59	2023-11-09 08:24:03.123327+00	2023-11-09 08:24:03.123343+00	Productivity
\.


--
-- Data for Name: nocharges_categoryfree; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_categoryfree (id, created, updated, title) FROM stdin;
1	2022-08-12 03:23:56.397376+00	2022-08-12 03:23:56.397395+00	Game
2	2022-08-27 03:52:19.515139+00	2022-08-27 03:52:19.515168+00	Application
3	2023-05-03 05:19:40.086385+00	2023-05-03 05:19:40.086411+00	Course
4	2023-10-24 07:29:43.712745+00	2023-10-24 07:29:43.712758+00	AI
100	2023-11-01 07:51:02.005667+00	2023-11-01 07:51:02.005682+00	None
\.


--
-- Data for Name: nocharges_categoryos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_categoryos (id, created, updated, title) FROM stdin;
1	2022-08-12 03:24:14.492445+00	2022-08-12 03:24:14.492472+00	Windows
2	2023-01-16 08:08:40.873273+00	2023-01-16 08:08:40.873288+00	Linux
4	2023-04-26 02:31:17.806395+00	2023-04-26 02:31:17.806409+00	Cross-Platform
100	2023-11-01 07:50:23.97523+00	2023-11-01 07:50:23.975242+00	None
6	2023-11-09 04:07:12.466476+00	2023-11-09 04:07:12.466494+00	Mobile
7	2023-11-09 04:07:44.929108+00	2023-11-09 04:07:44.929124+00	Mac
\.


--
-- Data for Name: nocharges_developer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_developer (id, created, updated, title) FROM stdin;
1	2022-08-21 09:35:19.082167+00	2022-08-21 09:35:19.082197+00	Epic Games
2	2022-08-21 09:37:09.582394+00	2022-08-21 09:37:09.582418+00	Activision
5	2023-01-16 08:20:00.381635+00	2023-01-16 08:20:00.381648+00	Maspin
6	2023-05-03 01:00:04.219069+00	2023-05-03 01:00:04.219101+00	Warm Lamp Games
7	2023-11-01 06:34:04.511706+00	2023-11-01 06:34:04.51172+00	JetBrains
100	2023-11-01 07:51:40.477937+00	2023-11-01 07:51:40.477956+00	None
\.


--
-- Data for Name: nocharges_distribution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_distribution (id, created, updated, title) FROM stdin;
1	2022-08-21 09:37:36.372268+00	2022-08-21 09:37:46.630491+00	Epic Games
2	2023-05-03 01:00:30.4884+00	2023-05-03 01:00:30.488431+00	Prime Gaming
3	2023-05-03 05:05:24.690908+00	2023-05-03 05:05:24.690925+00	Steam
4	2023-05-03 05:07:41.208743+00	2023-05-03 05:07:41.208756+00	Udemy
100	2023-11-01 07:52:13.165902+00	2023-11-01 07:52:13.165915+00	None
\.


--
-- Data for Name: nocharges_domain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_domain (id, created, updated, title) FROM stdin;
2	2022-08-13 06:44:04.340527+00	2022-08-13 06:44:04.340544+00	Latest
3	2022-08-13 06:44:15.141186+00	2022-08-13 06:44:15.141209+00	Tutorial
100	2023-11-01 07:52:38.410362+00	2023-11-01 07:52:38.410377+00	None
1	2022-08-13 06:43:57.976309+00	2022-08-13 06:43:57.976329+00	Gratis
\.


--
-- Data for Name: nocharges_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_nocharge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_nocharge (id, created, updated, title, caption, overview, content, video, poster_path, category_app_id, category_os_id, host_id, category_free_id, developer_id, distribution_id, domain_id, slug, promo_end_date) FROM stdin;
121	2023-10-24 02:28:58.5347+00	2023-11-10 01:52:24.858768+00	The Evil Within	Claim now	Developed by Tango Gameworks and directed by Resident Evil series creator Shinji Mikami, The Evil Within embodies pure survival horror.	Game ini berpusat pada protagonis Sebastian Castellanos yang ditarik ke dalam dunia yang terdistorsi penuh lokasi mimpi buruk dan makhluk mengerikan. Dalam perspektif orang ketiga, pemain akan melawan musuh yang tampak seperti mimpi buruk, termasuk bos, menggunakan senjata api dan senjata jarak dekat, serta maju melalui level, menghindari perangkap, menggunakan taktik penyamaran, dan menemukan barang koleksi.	null	uploads/2023/11/the_evil_within_fit.webp	56	1	1	1	100	1	1	the-evil-within	2023-11-23 16:59:00+00
77	2023-05-02 14:59:22.149295+00	2023-11-03 10:04:15.771674+00	Stacer: Linux System Optimizer and Monitoring	Manajemen Sistem Linux Anda dengan Stacer.	Aplikasi ini memungkinkan pengguna untuk melihat penggunaan CPU, memori, penyimpanan, dan aktivitas jaringan secara real-time.	Stacer adalah alat utilitas gratis dan open-source untuk Linux yang menyediakan antarmuka pengguna yang mudah dipahami untuk memantau dan mengelola sumber daya sistem. Aplikasi ini memungkinkan pengguna untuk melihat penggunaan CPU, memori, penyimpanan, dan aktivitas jaringan secara real-time. \r\n<br>\r\nSelain itu, Stacer juga menyediakan fitur pembersihan sistem untuk menghapus file sampah, mengatur aplikasi startup, dan menghapus paket perangkat lunak yang tidak diperlukan. Dengan desain yang intuitif dan alat optimisasi yang bermanfaat, Stacer merupakan alat penting bagi pengguna Linux yang ingin memudahkan proses manajemen sistem mereka. Dapatkan secara gratis dari Repository Github ini https://github.com/oguzhaninan/Stacer.	\N	uploads/2023/10/stacer-linux.jpg	55	2	1	\N	\N	\N	3	stacer-linux-system-optimizer-and-monitoring	2023-11-03 10:04:12+00
177	2023-11-16 02:28:45.913932+00	2023-11-16 02:49:14.792534+00	Plugin Keren Buat Developer Android: Ktlint 💻✨	Ktlint itu seperti magic kode yang ngusir masalah format 🧹.	Membuat kode jadi lebih rapi dan konsisten.	Apa untungnya pake plugin ini? Ktlint membuat jadi gampang bikin aplikasi pas-pasan, hemat waktu, dan hasilnya nggak malu-maluin. Kodenya jadi lebih rapi, bisa diliat & dimodif sama temen se-tim atau developer lain yang butuh ngakses kode kita. \r\n\r\nKtLint ini adalah sebuah linter untuk kode Kotlin. Jadi tugasnya adalah memeriksa kode Kotlinmu dan memberi tahumu jika ada yang tidak sesuai dengan standar penulisan kode yang baik dan benar (kode konvensi).\r\n\r\nTapi sebelum memulai, kita perlu menambahkannya ke project Android kita. \r\n\r\n## Menambahkan KtLint ke proyek Android\r\n\r\nPertama-tama, kita perlu menambahkan KtLint ke proyek kita. Ini bisa dilakukan dengan menambahkan script Gradle yang akan mengunduh dan mengatur KtLint. Buka file build.gradle di level proyek dan tambahkan baris berikut ke dalam blok allprojects:\r\n\r\n```kotlin\r\nplugins {  \r\n   ...  \r\n   id("org.jlleitschuh.gradle.ktlint") version "11.6.1"  \r\n}  \r\n  \r\nallprojects{  \r\n    apply plugin: "org.jlleitschuh.gradle.ktlint"  \r\n}\r\n```\r\n\r\nDengan ini, kita mendapatkan beberapa task Gradle baru seperti `ktlintCheck` dan `ktlintFormat`.\r\n\r\n- `ktlintCheck` akan memeriksa kode dan melaporkan kesalahan penulisan kode.\r\n- `ktlintFormat` akan memformat kode sehingga sesuai dengan standar Kotlin.\r\n\r\nUntuk menjalankan task-task ini, gunakan perintah-perintah berikut:\r\n```gradle\r\n./gradlew ktlintCheck          // Untuk memeriksa kode\r\n./gradlew ktlintFormat         // Untuk memformat kode\r\n```\r\n\r\nMenggunakan KtLint di Android Studio\r\n\r\nAnda juga dapat mengintegrasikan KtLint ke Android Studio. Ini akan memudahkan Anda melihat dan memperbaiki kesalahan penulisan kode saat menulis. Buka pengaturan `Preferences > Editor > Code Style > Kotlin`, lalu pilih set `Kotlin Style Guide` untuk `Coding Conventions`.\r\n\r\nUntuk melakukan format kode sesuai dengan standar KtLint, Anda bisa menggunakan pintasan `CMD + Option + L (untuk MacOS) atau Ctrl + Alt + L (untuk Windows/Linux).`\r\n\r\nItulah sedikit penjelasan mengenai KtLint. Dengan bantuan KtLint, kode Kotlin Android kita bisa lebih bersih, rapi dan konsisten. Selamat mencoba! 🎉	undefined	uploads/2023/11/ktlint-green.jpg	6	4	1	100	100	100	3	plugin-keren-buat-developer-android-ktlint	2023-11-15 15:02:00+00
71	2023-04-26 02:55:55.56307+00	2023-11-04 06:05:46.116871+00	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	Powerfull dan banyak fitur	Dengan fitur-fiturnya yang keren, seperti menambahkan teks, garis, panah, atau kotak pada tangkapan layar, serta menyimpan hasil tangkapan.	Flameshot aplikasi open-source yang berfungsi sebagai alat bantu untuk mengambil tangkapan layar pada sistem operasi Windows, Linux, dan macOS. Aplikasi ini memiliki fitur-fitur keren seperti kemampuan untuk menambahkan teks, panah, kotak, dan objek lainnya ke dalam tangkapan layar, serta menyimpan hasil tangkapan dalam berbagai format gambar.\r\n\r\n\r\nFitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah gambar. Dengan fitur ini bisa menggantikan gambar dengan url untuk mengaksesnya. Untuk menggunakannya cukup dengan mengunjungi https://flameshot.org/ lalu download sesuai dengan platform masing-masing.	\N	uploads/2023/10/flameshoot.jpg	55	4	1	2	\N	\N	3	flameshot-aplikasi-screenshot-open-source-yang-wajib-kamu-coba	2023-11-04 06:05:43+00
120	2023-10-20 01:57:36.380648+00	2023-11-07 05:33:07.160087+00	Best Practices High-Performing Menggunakan Kotlin	Praktik terbaik dalam Kotlin untuk mengoptimalkan performa aplikasi.	Memberikan panduan dari praktik dasar hingga strategi yang lebih canggih dalam mengoptimalkan performa aplikasi Kotlin.	Materi ini akan membahas praktik terbaik dalam mengoptimalkan performa aplikasi Kotlin. Dalam artikel ini, Anda akan mempelajari strategi dan teknik yang dapat Anda terapkan untuk meningkatkan performa aplikasi Kotlin Anda. Dari penggunaan val untuk favoring immutability, hingga penghindaran operator !! dalam null safety, serta penggunaan inline functions untuk mengurangi overhead pemanggilan fungsi. Selain itu, artikel ini juga akan membahas beberapa hal terkait lainnya seperti smart casts, penggunaan koleksi yang dioptimalkan, lazy initialization, dan string concatenation. Dengan memahami dan menerapkan praktik-praktik ini, Anda akan dapat mengoptimalkan performa aplikasi Kotlin Anda dan memberikan pengalaman yang lebih baik kepada pengguna.\r\n\r\n\r\n\r\n## 1. Favoring Immutability with val\r\n\r\n- Menggunakan val untuk variabel yang tidak dapat diubah (immutable) dapat membuat kode lebih dapat diprediksi dan lebih mudah untuk dipelihara.\r\n- Menghindari penggunaan var untuk variabel yang dapat diubah (mutable) kecuali jika memang diperlukan.\r\n- Mengutamakan imutabilitas dapat menghasilkan kode yang lebih mudah dipelihara dan pada akhirnya lebih performa.\r\n\r\n### Contoh case:\r\n\r\nBayangkan Anda memiliki sebuah kotak yang berisi buah-buahan. Jika Anda membuat kotak tersebut menjadi tidak dapat diubah (immutable) dengan menggunakan val, maka Anda dapat yakin bahwa isi kotak tersebut tidak akan berubah. Hal ini memudahkan Anda untuk memprediksi dan mengelola buah-buahan tersebut.\r\nContoh lainnya misalnya, Anda memiliki sebuah variabel pi yang bernilai 3.14 yang tidak akan berubah. Dalam hal ini, Anda dapat menggunakan val untuk membuat variabel tersebut menjadi tidak dapat diubah.\r\n\r\n## 2. Null Safety: Hindari Operator !!\r\n\r\n- Fitur null safety dalam Kotlin dirancang untuk mengeliminasi NullPointerException, yang dapat menjadi bottleneck dalam performa aplikasi.\r\n- Menggunakan operator !! untuk mengakses nullable variable dapat meningkatkan risiko terjadinya NullPointerException.\r\n- Sebagai alternatif, gunakan operator ?. dan ?: untuk menangani nullable variable dengan aman dan menghindari risiko NullPointerException.\r\n\r\n### Contoh case:\r\nMisalnya, Anda memiliki sebuah variabel name yang mungkin bernilai null. Anda dapat menggunakan operator ?. untuk mengakses panjang string name dengan aman, seperti name?.length. Jika name bernilai null, maka ekspresi tersebut akan mengembalikan null.\r\n\r\n## 3. Inline Functions untuk Mengurangi Overhead Panggilan\r\n- Kotlin memungkinkan Anda untuk menandai fungsi sebagai inline, yang menghilangkan overhead panggilan fungsi dengan menggabungkan kode fungsi langsung pada tempat pemanggilan.\r\n\r\n### Contoh case:\r\nAnda memiliki sebuah fungsi calculateSum yang menerima dua parameter dan mengembalikan hasil penjumlahan. Jika Anda menandai fungsi tersebut sebagai inline, maka kode fungsi tersebut akan langsung digabungkan pada tempat pemanggilan, mengurangi overhead panggilan fungsi.\r\n\r\nSelain itu, terdapat juga beberapa hal yang terkait dengan optimasi performa aplikasi Kotlin, antara lain:\r\n\r\n- **Smart Casts**: Kotlin memiliki fitur smart casts yang dapat memperbaiki performa dengan menghindari pemanggilan yang berulang untuk konversi tipe data.\r\n- **Collections**: Menggunakan fungsi-fungsi koleksi yang dioptimalkan seperti filter, map, dan fold dapat meningkatkan performa aplikasi dengan mengurangi iterasi dan penggunaan memori yang tidak perlu.\r\n- **Lazy Initialization**: Menggunakan lazy initialization untuk menginisialisasi objek hanya ketika diperlukan dapat mengurangi beban pada saat aplikasi dimulai.\r\n- **String Concatenation**: Menggunakan StringBuilder atau String.format() daripada operator + untuk menggabungkan string dapat meningkatkan performa karena menghindari pembuatan objek string baru setiap kali operasi dilakukan.	\N	uploads/2023/11/kotlin-flow.webp	6	4	1	\N	\N	\N	3	best-practices-high-performing-menggunakan-kotlin	2023-11-03 10:02:14+00
201	2023-11-20 10:10:27.429214+00	2023-11-20 10:10:27.42923+00	Handbrake 1.7: Mengapa Istimewa dan Penting untuk Kita? 🚀	Designed by Handbrake, sebuah perangkat lunak pakar dalam mengkonversi video.	Handbrake 1.7 begitu istimewa adalah dukungan terhadap enkoder AMD dan NVIDIA AV1!	### Apa itu Handbrake? 📽️\r\nHandbrake merupakan perangkat lunak populer yang banyak dipakai oleh pengguna di seluruh dunia untuk mengkonversi dan mengoptimalkan video agar dapat diputar dalam berbagai perangkat. Para pengguna setia Handbrake akan senang mendengar bahwa tim pengembang telah merilis Handbrake versi 1.7. Ada beberapa perubahan dan peningkatan yang akan membuat Handbrake lebih cepat dan efisien!\r\n\r\n#### Fitur Terbaru Handbrake 1.7 💥\r\nSejumlah inovasi telah diterapkan pada versi terbaru Handbrake ini. Berikut beberapa fitur terbaru yang bisa kita nikmati:\r\n\r\n - Penambahan Enkoder AMD & NVIDIA AV1 🎉\r\n Tanda Nomor Satu yang membuat Handbrake 1.7 begitu istimewa adalah dukungan terhadap enkoder AMD dan NVIDIA AV1! Ini adalah Big update handbrake with AMD & NVIDIA AV1 Encoders. Digunakan oleh perusahaan teknologi terbesar di dunia, enkoder ini membawa peningkatan yang signifikan dalam kualitas video dan kecepatan pemrosesan.\r\n- Optimalisasi Hardware Encoding 👷‍♂️\r\nHandbrake versi 1.7 memungkinkan pengguna untuk memanfaatkan optimalisasi hardware encoding dengan dukungan penuh untuk enkoder Intel QuickSync. Ini berarti proses konversi video akan berjalan lebih cepat dan mulus, dengan konsumsi daya yang lebih rendah.\r\n-  Dukungan Format Video Tambahan 📹\r\nVersi terbaru ini mendukung beberapa format video tambahan yang tidak tersedia dalam versi sebelumnya. Pengguna sekarang dapat menikmati pemutaran video dalam format seperti WebM dan AV1, meningkatkan fleksibilitas dan kualitas tampilan video.\r\n-  Peningkatan Preset dan Profil Pengguna 🤳\r\nDaftar preset yang disediakan Handbrake versi 1.7 telah diperbarui dan diperluas, memudahkan pengguna untuk memilih setelan yang sesuai dengan kebutuhan mereka. Selain itu, versi terbaru ini juga memungkinkan pengguna untuk membuat profil pengguna khusus yang disesuaikan dengan preferensi dan target.\r\n\r\nUntuk memberikan gambaran tentang mengapa Handbrake versi 1.7 penting untuk kita, mari kita lihat kode contoh 👇:\r\n```bash\r\nHandbrakeCLI -i video_input.mkv -o video_output.mp4 --encoder av1 --encopts="gpu=0" -q 30\r\n```\r\nDalam contoh ini, kita menggunakan HandbrakeCLI untuk mengkonversi video dengan format input ".mkv" dan output ".mp4." Kita menggunakan enkoder AV1 dengan mengaktifkan dukungan hardware (dalam hal ini, GPU 0) dan menetapkan nilai kualitas output menjadi 30.\r\n\r\n*Ini akan membuat proses konversi menjadi lebih cepat dan efisien daripada pendekatan biasa yang tidak menggunakan enkoder AV1.*\r\n\r\nFAQ 🧐\r\n- **Apakah Handbrake versi 1.7 dapat diunduh gratis?**\r\n\tYa, Handbrake tersedia untuk diunduh secara gratis.\r\n- **Sistem Operasi apa yang didukung Handbrake?**\r\nHandbrake mendukung Windows, macOS, dan Linux.\r\n- **Apakah dukungan enkoder AMD & NVIDIA AV1 otomatis terdeteksi oleh perangkat lunak?**\r\nYa, Handbrake akan otomatis mendeteksi dukungan hardware pada komputer Anda.\r\n- **Bagaimana cara mengoptimalkan video dengan Handbrake?**\r\nIkuti panduan resmi Handbrake untuk cara mengoptimalkan video dan menghasilkan file output yang lebih kecil namun tetap berkualitas tinggi.\r\n- **Bagaimana cara mengkonversi video untuk diputar pada perangkat mobile?**\r\nHandbrake menyediakan berbagai preset yang memungkinkan Anda mengonversi video untuk pemutaran optimal pada perangkat mobile seperti iPhone, iPad, atau Android.\r\n- **Mungkinkah tipe enkoder AV1 tersedia untuk semua sistem operasi yang didukung oleh Handbrake?**\r\nYa, dukungan untuk enkoder AV1 tersedia untuk Windows, macOS, dan Linux.\r\n\r\nHandbrake versi 1.7 mewujudkan banyak peningkatan dan perubahan yang membuat Handbrake lebih cepat, berguna, dan mudah digunakan. Big update handbrake with AMD & NVIDIA AV1 Encoders akan membantu pengguna untuk menciptakan video berkualitas tinggi dalam waktu yang lebih singkat dan konsumsi daya yang lebih rendah. Jadi, tunggu apa lagi? Cobalah Handbrake versi 1.7 dan rasakan perbedaannya! 🎬	undefined	uploads/2023/11/edit_handbrake.webp	13	4	1	100	100	100	100	handbrake-17-mengapa-istimewa-dan-penting-untuk-kita	2023-11-19 15:03:00+00
122	2023-10-24 03:11:02.910614+00	2023-10-25 04:33:30.459728+00	iOS 17.1 Diperkirakan Akan Diluncurkan Besok	Pembaruan iOS 17.1 mencakup beberapa fitur baru yang ditunggu.	Beberapa perbaikan bug, jadi jika Anda mengalami masalah dengan pencarian di aplikasi Pesan atau gambar yang persisten di model iPhone 15 baru, Anda akan ingin mengunduh pembaruan segera.	Pada minggu lalu, Apple telah merilis kandidat rilis (RCs) untuk semua pembaruan perangkat lunak yang akan datang. Biasanya, Apple menguji RC selama sekitar satu minggu untuk memastikan tidak ada bug yang dapat merusak perangkat. Kali ini, kita juga mendapat petunjuk tentang tanggal peluncuran spesifik karena adanya pembaruan di Perancis. iOS 17.1 di Perancis mencakup fitur untuk mengurangi level radiasi model iPhone 12 ketika mereka diam di atas meja atau permukaan lainnya. Grup regulasi Perancis ANFR dua minggu lalu mengonfirmasi bahwa pembaruan iOS 17.1 diharapkan keluar "pada 24 Oktober" macrumors.com.\r\n\r\nPePada minggu lalu, Apple telah merilis kandidat rilis (RCs) untuk semua pembaruan perangkat lunak yang akan datang. Biasanya, Apple menguji RC selama sekitar satu minggu untuk memastikan tidak ada bug yang dapat merusak perangkat. Kali ini, kita juga mendapat petunjuk tentang tanggal peluncuran spesifik karena adanya pembaruan di Perancis. iOS 17.1 di Perancis mencakup fitur untuk mengurangi level radiasi model iPhone 12 ketika mereka diam di atas meja atau permukaan lainnya. Grup regulasi Perancis ANFR dua minggu lalu mengonfirmasi bahwa pembaruan iOS 17.1 diharapkan keluar "pada 24 Oktober" **macrumors.com**.\r\n\r\npembaruan iOS 17.1 mencakup beberapa fitur baru yang berguna. Ini mencakup opsi untuk melanjutkan transfer AirDrop besar melalui internet setelah dimulai, jadi jika Anda mengirim file kepada seseorang, Anda dapat berjalan pergi sementara transfer sedang berlangsung. Ada opsi baru untuk memfavoritkan lagu Apple Music, ada opsi baru untuk meninggalkan tampilan dalam mode StandBy, dan Screen Time seharusnya bekerja lebih baik di semua perangkat. Ada juga beberapa perbaikan bug, jadi jika Anda mengalami masalah dengan pencarian di aplikasi Pesan atau gambar yang persisten di model iPhone 15 baru.\r\n\r\nJika Anda memiliki Apple Watch, sebenarnya watchOS 10.1 yang akan membawa beberapa fitur terbaik. Pembaruan ini mencakup dukungan untuk NameDrop untuk berbagi info kontak dengan cepat dengan orang lain, dan menambahkan Double Tap pada model terbaru. Double Tap memungkinkan Anda mengetuk jari telunjuk dan ibu jari Anda bersama-sama untuk melakukan hal-hal seperti menjawab panggilan telepon dan membawa Smart Stack.\r\n\r\nmacOS Sonoma 14.1 memiliki beberapa perbaikan bug, dan jika Anda memiliki HomePod asli atau HomePod mini, Anda akan senang mendengar bahwa HomePod 17.1 menambahkan fitur Enhance Dialogue ke perangkat ini. Ketika HomePod digunakan sebagai speaker Apple TV, Enhance Dialogue mengurangi kebisingan latar belakang dan musik saat ada pembicaraan sehingga Anda dapat lebih baik mendengar apa yang dikatakan.	\N	uploads/2023/10/ios17.jpg	\N	1	1	\N	1	1	\N	ios-171-diperkirakan-akan-diluncurkan-besok	2023-10-24 03:02:35+00
78	2023-05-03 01:10:37.98711+00	2023-11-10 01:52:56.601247+00	Dapatkan Beholder 2 Gratis	Claim now	Pemain berperan sebagai inspektur pemerintah yang menyusup dan melawan korupsi serta konspirasi di sebuah negara otoriter. Dilengkapi dengan cerita yang menarik, tampilan visual yang unik, dan gameplay yang memacu adrenalin.	Game ini tersedia secara gratis di Prime Gaming. Dalam game ini, Anda akan mengambil keputusan sulit, mengumpulkan informasi rahasia, melakukan penyadapan, dan membangun hubungan dengan beragam karakter unik dalam upaya untuk menjaga keamanan keluarga dan membantu mereka mencapai tujuan mereka.\r\n<br>\r\nBeholder 2 menawarkan pengalaman yang mendalam dan penuh teka-teki, serta grafik yang indah dan atmosfer yang memikat. Jika Anda mencari pengalaman bermain game yang meningkatkan kemampuan analitis dan menggugah imajinasi, Beholder 2 bisa menjadi pilihan yang tepat. Dapatkan gamenya di Prime Game ini https://gaming.amazon.com	null	uploads/2023/11/beholder-fit.webp	56	4	1	1	100	2	1	dapatkan-beholder-2-gratis	2023-05-24 00:49:36+00
178	2023-11-16 04:11:44.151251+00	2023-11-16 04:25:54.974305+00	Pentingnya Fungsi Key pada Jetpack Compose 🚀	Jetpack Compose memudahkan dan mempercepat pengembangan UI.	Fungsi key memiliki peran yang sangat penting dalam mengelola keadaan dan kinerja komposisi.	Hallo, sobat developer! Pernah dengar tentang Jetpack Compose? Yap, Jetpack Compose adalah toolkit modern Android yang memudahkan dan mempercepat pengembangan UI di Android dengan kode lebih sedikit, alat yang kuat, dan API Kotlin yang intuitif. Nah, di dunia Jetpack Compose, fungsi key memiliki peran yang sangat penting dalam mengelola keadaan dan kinerja komposisi, terutama saat berurusan dengan daftar item atau konten dinamis. Kuy, simak lebih lanjut yuk! 📚\r\n\r\n#### 1. Apa sih Fungsi Key dalam Jetpack Compose? 🔑\r\n\r\nFungsi key digunakan untuk memastikan bahwa Compose dapat mengidentifikasi dengan benar item mana yang telah berubah, dipindahkan, atau dihapus dalam daftar. Ini akan membantu dalam mempertahankan konsistensi keadaan dan rekomposisi yang efisien. Ini sangat penting untuk daftar yang bisa berubah, di mana identitas masing-masing elemen harus dipertahankan di seluruh rekomposisi.\r\n\r\n**Contoh:**\r\n\r\n```kt\r\n    @Composable\r\n    fun GreetingList(names: List<String>) {\r\n        LazyColumn {\r\n            items(names) { name ->\r\n                key(name) {\r\n                    Greeting(name = name)\r\n                }\r\n            }\r\n        }\r\n    }\r\n```\r\n\r\n#### 2. Bagaimana Cara Kerja Fungsi Key? ⚙️\r\n\r\nKetika kamu memberikan key unik ke elemen dalam daftar, Compose menggunakan key ini untuk mencocokkan komposisi sebelumnya dengan yang sekarang. Ini membantu Compose mengerti komponen mana yang baru, mana yang telah dihapus, dan mana yang hanya dipindahkan.\r\n\r\nTanpa key, Compose mencocokkan komponen berdasarkan posisi mereka dalam pohon, yang dapat menyebabkan kesalahan dalam keadaan dan UI jika urutan komponen berubah. Dengan menggunakan key, kamu mengikat keadaan dan identitas composable dengan data yang diwakilinya, bukan posisinya dalam pohon UI.\r\n\r\n#### 3. Kapan Harus Menggunakan Fungsi Key? ❓\r\n\r\n- Daftar item yang dapat dilakukan operasi seperti menambah, menghapus, atau mengurutkan item.\r\n\r\n- Komponen yang memiliki keadaan internal yang harus dipertahankan di seluruh rekomposisi.\r\n\r\n- Setiap situasi di mana identitas item sangat penting untuk rendering dan manajemen keadaan yang benar.\r\n\r\n#### 4. Praktik Terbaik dalam Menggunakan Key 🏆\r\n\r\nBerikut beberapa praktik terbaik dalam penggunaan key:\r\n\r\n- **Ketidaksamaan**: Pastikan key unik untuk semua item dalam satu daftar.\r\n\r\n- **Stabilitas**: Pilih key yang stabil dan tidak berubah seiring berjalannya waktu.\r\n\r\n### FAQs ❓\r\n#### 1. Apa itu Jetpack Compose?\r\n\r\nJetpack Compose adalah toolkit modern Android untuk membangun UI yang asli.\r\n\r\n#### 2. Mengapa fungsi key penting dalam Jetpack Compose?*\r\n\r\nFungsi key penting untuk mempertahankan konsistensi keadaan dan efisiensi rekomposisi, terutama saat berurusan dengan daftar item atau konten dinamis.\r\n\r\n#### 3. Bagaimana cara kerja fungsi key?*\r\n\r\nFungsi key membantu Compose memahami komponen mana yang baru, mana yang telah dihapus, dan mana yang hanya dipindahkan berdasarkan key yang unik.\r\n\r\n#### 4. Kapan penggunaan fungsi key diperlukan?*\r\n\r\nSaat berurusan dengan daftar item dan situasi di mana identitas masing-masing item penting untuk rendering dan manajemen keadaan yang benar.\r\n\r\n#### 5. Apa saja praktik terbaik dalam menggunakan key?*\r\n\r\nPastikan key unik dan stabil untuk semua item dalam satu daftar.\r\n\r\n### Kesimpulan 🎓\r\nFungsi key pada Jetpack Compose memang sangat penting dan berguna, terutama ketika kamu ingin mengelola keadaan dan kinerja komposisi dengan lebih efisien. Cobalah untuk selalu menggunakan fungsi key dengan bijak dan mengikuti praktik terbaik yang telah disampaikan agar kamu bisa menciptakan aplikasi Android yang lebih memukau. Semoga artikel ini bermanfaat! Selamat mencoba 🚀💡	undefined	uploads/2023/11/jetpack_compose_google.webp	6	4	1	100	100	100	3	pentingnya-fungsi-key-pada-jetpack-compose	2023-11-15 04:02:00+00
76	2023-05-02 14:29:44.305766+00	2023-11-04 06:02:59.189875+00	Rangoli Software Keyboard Royal Kludge(Linux Support)	Budget King Mechanical Keyboard	Dalam pengembangannya, Rangoli melakukan reverse-engineering terhadap protokol yang digunakan oleh keyboard Royal Kludge.	Keyboard Royal Kludge memang populer di kalangan pengguna keyboard mekanik yang memiliki anggaran terbatas, namun dukungan perangkat lunaknya kurang memuaskan. Namun, sekarang ada solusi yang tepat untuk mengatasinya, yaitu dengan menggunakan aplikasi open-source bernama Rangoli yang dapat diunduh secara gratis melalui GitHub ini https://github.com/rnayabed/rangoli.\r\n<br>\r\nRangoli adalah software yang mendukung berbagai jenis keyboard Royal Kludge. Dengan menggunakan Rangoli, pengguna dapat menyesuaikan tombol atau pemetaan sesuai dengan kebutuhan mereka. Perangkat lunak ini juga <b>crossplatform</b> yang mendukung dalam lingkungan yang luas sehingga memberikan kenyamanan dalam mengatur keyboard dengan sistem operasi Linux.\r\n<br>\r\nDalam pengembangannya,  Rangoli melakukan reverse-engineering terhadap protokol yang digunakan oleh keyboard Royal Kludge dengan firmware default-nya, sehingga Rangoli bisa berfungsi sebagai software pengganti RK Software. Selain itu, aplikasi ini dilesensikan di bawah GNU General Public License v3.0 dan disarankan bagi para penggunanya untuk memberikan donasi sebagai dukungan kepada pengembang.\r\n<br>\r\nDengan aplikasi Rangoli, mengelola keyboard Royal Kludge menjadi lebih mudah dan menyenangkan. Jadi, bagi Anda yang ingin meningkatkan produktivitas pengalaman mengetik di Linux dengan keyboard Royal Kludge, Rangoli mungkin bisa jadi pilihan yang tepat.\r\n<br>	\N	uploads/2023/10/rangoli.png	55	2	1	\N	\N	\N	3	rangoli-software-keyboard-royal-kludgelinux-support	2023-11-04 06:02:56+00
86	2023-05-03 06:13:20.651372+00	2023-11-07 13:52:24.983814+00	Amazon Web Services (AWS) - Zero to Hero	Claim now	Course ini cocok untuk pemula yang ingin memulai karir di bidang cloud computing dan profesional yang ingin meningkatkan keterampilan mereka dalam penggunaan AWS.	Course ini dirancang untuk membantu peserta memahami dan menguasai layanan-layanan AWS yang paling populer dan memberikan pengenalan mendalam tentang manajemen sumber daya, komputasi, jaringan, basis data, dan keamanan pada platform AWS. Selain itu, peserta juga akan belajar bagaimana membangun, mengelola, dan memantau aplikasi dan infrastruktur cloud menggunakan teknologi-teknologi seperti EC2, S3, RDS, CloudWatch, dan lain sebagainya.\r\n<br>\r\nDapatkan Coursenya disini <br> https://www.udemy.com/course/amazon-web-services-aws-v/	\N	uploads/2023/11/aws-course-fit.webp	\N	4	1	3	\N	4	1	amazon-web-services-aws-zero-to-hero	2023-10-25 03:38:23+00
136	2023-11-01 08:04:08.521735+00	2023-11-03 01:57:04.014989+00	Cara Tepat Memperbaharui Data Secara Otomatis Menggunakan Kotlin Flow	Strategi memperbaharui data otomatis di kotlin android.	Strategi penerapan memiliki beberapa plan yang dapat diikuti pada artikel ini.	<p>Kotlin Flow untuk memuat data secara efisien dalam aplikasi Android. Ada beberapa tahapan untuk memperbarui data secara otomatis serta memberikan contoh kasus dan analogi yang tepat untuk pemahaman yang lebih baik.</p><p></p>\r\n\r\n**1. Memuat Data secara Periodik:**\r\nKetika kita tidak dapat menentukan dengan pasti saat dataset yang ditampilkan oleh antarmuka pengguna (UI) telah berubah atau ketika perubahan terjadi terlalu sering, strategi umum adalah memuat ulang data secara periodik pada interval yang tetap selama layar terlihat.\r\n\r\nSalah satu cara paling sederhana untuk mencapai hal ini adalah dengan membuat Flow dari perulangan tak terbatas yang memanggil fungsi delay antara setiap emisi.\r\n\r\nContoh:\r\n```kotlin\r\nfun tickerFlow(period: Duration): Flow<Unit> = flow {\r\n    while (true) {\r\n        emit(Unit)\r\n        delay(period)\r\n    }\r\n}\r\n```\r\nPenjelasan:\r\n\r\n - Fungsi `tickerFlow` akan membuat Flow yang menghasilkan Unit.\r\n - Flow ini akan terus mengeluarkan Unit dengan interval waktu yang ditentukan oleh `period`.\r\n - Operator `delay(period)` digunakan untuk mengatur jeda antara setiap emisi.\r\n \r\nAnalogi:\r\nKita bisa membayangkan Flow seperti kran air yang terus mengalir pada interval tertentu. Setiap kali kran dibuka (emit), air (Unit) keluar dan kemudian kran ditutup untuk sementara waktu (delay) sebelum kran dibuka kembali.\r\n\r\n**2. Memuat Dengan Interval Tertentu**\r\nUntuk melakukan operasi muat data pada setiap tick timer, kita dapat menggunakan operator `map` atau `mapLatest` untuk memperbarui data.\r\n\r\nContoh:\r\n```kotlin\r\ntickerFlow(REFRESH_INTERVAL)\r\n    .map {\r\n        repository.loadSomeData()\r\n    }\r\n```\r\nPenjelasan:\r\n - Dengan menggunakan operator `map`setiap tick timer akan memicu operasi memuat data dan mengembalikan hasil result.\r\n - Penempatan `repository.loadSomeData() dalam block lambda `map` akan memastikan operasi muat data dijalankan pada setiap tick timer.\r\n\r\nAnalogi:\r\nSeperti instruksi yang diberikan pada setiap waktu tik-tok jam, ketikan timer tik, kita akan melaksanakan operasi yang diberikan.\r\n\r\n**3. Memuat Data Secara Pintar untk Memanfaatkan Penyimpanan Sementara**\r\nUntuk interval pembaruan yang lebih lama dan ketika operasi muat data membutuhkan lebih banyak sumber daya, seperti panggilan API, algoritma sebelumnya tidak cukup efisien. Ketika layar yang sebelumnya tersembunyi kembali muncul, kita ingin menghindari memuat ulang data yang masih dianggap valid untuk beberapa waktu ke depan.\r\nUntuk mengatasi masalah ini, kita dapat menggunakan operator `synchronizedTickerFlow` yang lebih pintar dan berfungsi sejalan dengan kehidupan siklus. Operator ini akan hanya mengeluarkan nilai ketika ada minimal satu pelanggan yang terdaftar, dan mengingat waktu kapan setiap emisi berikutnya akan terjadi.\r\n\r\nContoh:\r\n```kotlin\r\nfun synchronizedTickerFlow(\r\n    period: Duration,\r\n    subscriptionCount: StateFlow<Int>,\r\n): Flow<Unit> = flow {\r\n    var nextEmissionTimeMark: TimeMark? = null\r\n    \r\n    flow {\r\n        nextEmissionTimeMark?.let { delay(it.elapsedNow()) }\r\n        while (true) {\r\n            emit(Unit)\r\n            nextEmissionTimeMark = timeSource.markNow() + period\r\n            delay(period)\r\n        }\r\n    }.flowWhileShared(subscriptionCount, SharingStarted.WhileSubscribed(1))\r\n}.flowOn(Dispatchers.Default)\r\n```\r\nPenjelasan:\r\n - Operator `synchronizedTickerFlow` menerima dua argumen: `period` adalah interval waktu antara setiap emisi, dan `subscriptionCount` adalah StateFlow yang menghitung jumlah pelanggan yang terdaftar.\r\n - Dalam implementasi ini, digunakan `TimeSource.elapsedNow()` untuk menghitung durasi waktu yang harus ditunggu untuk mencapai waktu emisi berikutnya.\r\n \r\n Analogi:\r\n Kita dapat membayangkan operator `synchronizedTickerFlow` sebagai pengatur waktu yang cerdas. Jika tidak ada pelanggan yang terdaftar, pengatur waktu ini akan menunggu hingga waktu emisi berikutnya untuk memulai kembali emisi data. Ketika pelanggan terdaftar kembali, pengatur waktu ini akan mempertahankan waktu emisi berikutnya dan hanya memulai emisi setelah mencapai waktu yang ditentukan.\r\n\r\n**4. Pentingnya Menggunakan TimeSource yang Tepat**\r\nUntuk memastikan kode oini bekerja dengan baik, penting menggunakan TimeSource berbasis clock monotinic  (yang selalu bergerak maju dan tidak dapat disesuaikan atau direset) daripada menggunakan wall clock.\r\nContoh Kasus dan Analoginya:\r\nJika kita menggunakan wall clock, misalnya System.currentTimeMillis(), maka saat perangkat Android berada dalam mode tidur yang dalam (deep sleep) setelah layar mati, waktu akan berhenti berjalan.\r\n\r\nSebagai kasus, bayangkan kita menggunakan wall clock dan interval pembaruan adalah 1 jam. Jika pengguna membuka perangkat Android setelah perangkat dalam mode tidur selama 10 menit, pembaruan data akan dipicu dengan keterlambatan 10 menit saat aplikasi dibuka kembali.\r\n\r\nAnaloginya, waktu yang digunakan di sini harus seperti stopwatch yang bergerak selama perangkat aktif, tidak terpengaruh oleh tidur atau keadaan perangkat lainnya.\r\n \r\nStrategi-strategi ini memungkinkan penggunaan Flow untuk memuat data secara efisien dengan interval tertentu dan memanfaatkan penyimpanan sementara ketika perlu. Penggunaan TimeSource yang tepat juga penting agar operasi pembaruan data berjalan dengan lancar.	undefined	uploads/2023/11/flow-entities_VBaaSUW.png	6	4	1	100	7	100	3	cara-tepat-memperbaharui-data-secara-otomatis-menggunakan-kotlin-flow	2023-11-01 08:04:08+00
143	2023-11-03 03:19:27.51964+00	2023-11-03 04:16:07.110102+00	Scrcpy Versi 2 Memiliki Banyak Perubahan Yang Signifikan	Menampilkan, merekam, dan mengendalikan perangkat Android melalui PC.	Scrcpy 2.2 memberikan pengalaman yang lebih baik dan mempermudah pengguna dalam menjalankan berbagai aktivitas di perangkat Android melalui komputer.	Scrcpy merupakan aplikasi open source yang sangat berguna untuk menampilkan, merekam, dan mengendalikan perangkat Android dari komputer. Baru-baru ini, Scrcpy diperbarui ke versi 2.2. Pembaruan ini memiliki berbagai fitur baru yang menarik dan di antaranya adalah dukungan multi-displays, dukungan untuk Android 12, serta dukungan untuk resolusi tinggi dan pengaturan penyimpanan.\r\n\r\nScrcpy 2.2 adalah aplikasi yang berfokus pada performa dan kualitas. Dengan dukungan resolusi tinggi hingga 1080p atau lebih tinggi dan latency yang rendah, aplikasi ini sangat cocok bagi Anda yang ingin merekam atau melakukan streaming dari perangkat Android ke komputer.\r\n\r\nBahkan ada fitur yang sangat menarik seperti mirror ke layar PC/Laptop dengan USB bisa tanpa mengaktifkan layar di Android, jadi dengan layar `Turn Off` memungkinkan digunakan di Laptop.\r\n\r\nBerikut cara untuk mirror tanpa harus mengaktifkan layar:\r\n```bash\r\nscrcpy --turn-screen-off\r\nscrcpy -S   # short version\r\n```\r\nBerikut beberapa fungsi dari scrcpy:\r\n\r\n 1. **Tanpa Root**: Scrcpy tidak memerlukan akses root pada perangkat Android. Ini berarti Anda dapat menggunakan scrcpy pada perangkat Android tanpa perlu melakukan proses root terlebih dahulu.\r\n 2. **Selection**: Jika hanya ada satu perangkat yang terhubung, scrcpy akan secara otomatis memilih perangkat tersebut. Namun, jika terdapat beberapa perangkat yang terhubung, Anda harus menentukan perangkat yang akan digunakan dengan salah satu dari 4 cara berikut:\r\n\t  - Dengan menggunakan serial perangkat: `scrcpy --serial=0123456789abcdef` atau `scrcpy -s 0123456789abcdef`\r\n\t  - Dengan memilih perangkat yang terhubung melalui USB: `scrcpy --select-usb` atau `scrcpy -d`\r\n\t  - Dengan memilih perangkat yang terhubung melalui TCP/IP: `scrcpy --select-tcpip` atau `scrcpy -e`\r\n\t  - Dengan memilih perangkat yang sudah terhubung melalui TCP/IP: `scrcpy --tcpip=192.168.1.1:5555` atau `scrcpy --tcpip=192.168.1.1`.\r\n3. **TCP/IP (wireless)**: Scrcpy menggunakan adb untuk berkomunikasi dengan perangkat. Adb dapat terhubung ke perangkat melalui TCP/IP. Perangkat harus terhubung ke jaringan yang sama dengan komputer.\r\n4. **Automatic**: Scrcpy menyediakan opsi --tcpip yang memungkinkan Anda mengatur koneksi secara otomatis. Ada dua varian cara menggunakannya\r\n\t- Jika perangkat sudah mendengarkan port untuk koneksi adb pada alamat IP tertentu (misalnya 192.168.1.1), jalankan perintah: `scrcpy --tcpip=192.168.1.1` atau `scrcpy --tcpip=192.168.1.1:5555`.\r\n\t- Jika mode TCP/IP adb dinonaktifkan pada perangkat atau jika Anda tidak mengetahui alamat IP perangkat, hubungkan perangkat melalui USB terlebih dahulu, lalu jalankan perintah: `scrcpy --tcpip`.\r\n5. Lebih lengkap dokumentasi fitur bisa lihat dari sini https://github.com/Genymobile/scrcpy/tree/master/doc\r\n\r\nBerikut adalah contoh penggunaan scrcpy dengan beberapa opsi yang telah disebutkan di atas:\r\n\r\n```bash\r\n# Memilih perangkat dengan serial\r\nscrcpy --serial=0123456789abcdef\r\n\r\n# Memilih perangkat yang terhubung melalui USB\r\nscrcpy --select-usb\r\n\r\n# Memilih perangkat yang terhubung melalui TCP/IP\r\nscrcpy --select-tcpip\r\n\r\n# Memilih perangkat yang sudah terhubung melalui TCP/IP\r\nscrcpy --tcpip=192.168.1.1:5555\r\n\r\n# Menghubungkan perangkat melalui TCP/IP secara otomatis\r\nscrcpy --tcpip\r\n\r\n\r\n```\r\n\r\n![Demo Scrcpy](https://i.ibb.co/hBFnmrZ/tutorial-screen-off-scrcpy.gif)	undefined	uploads/2023/11/scrcpy.webp	6	4	1	100	100	1	3	scrcpy-versi-2-memiliki-banyak-perubahan-yang-signifikan	2023-11-03 03:19:27+00
89	2023-05-03 09:15:22.061003+00	2023-11-03 10:02:58.45632+00	AI Code Translator	Repository ini yang menggunakan teknologi Machine Learning dari OpenAI.	Memungkinkan para pengembang perangkat lunak untuk mengintegrasikan satu bahasa pemrograman dengan yang lain, atau menerjemahkan kode dari bahasa tertentu ke bahasa lain dengan mudah dan efisien.	Dalam dunia pemrograman, seringkali kita dihadapkan pada tugas-tugas yang memerlukan kemampuan untuk menerjemahkan kode dari satu bahasa ke bahasa lain. Hal ini dapat menjadi tugas yang rumit dan memakan waktu, terutama jika kita tidak akrab dengan kedua bahasa pemrograman tersebut.\r\n<br>\r\nSolusi baru telah muncul untuk menyelesaikan masalah tersebut. AI Code Translator adalah platform inovatif yang menggunakan teknologi Machine Learning dari OpenAI untuk membantu mengubah kode-kode pemrograman antar bahasa secara otomatis dan akurat. \r\n\\n\r\nDengan menggunakan AI Code Translator, Anda dapat mengubah kode yang ditulis dalam satu bahasa pemrograman menjadi bahasa pemrograman lain tanpa harus mempelajari bahasa baru secara mendetail.\\n\r\n\r\nAnda hanya perlu menyalin kode dari bahasa sumber ke platform AI Code Translator, dan kemudian memilih bahasa target yang diinginkan. Platform akan segera menerjemahkan kode tersebut ke dalam bahasa target yang diinginkan, sehingga Anda dapat mempercepat penyelesaian tugas pemrograman Anda.\\n\r\n<br>\r\nBerikut ini adalah langkah-langkah untuk menginstall AI Code Translator pada <b>localhost</b>:<br>\r\n1. Pastikan bahwa Node.js, Git dan npm sudah terinstal pada sistem operasi Anda. Jika belum, silakan unduh dan instal versi terbaru dari Node.js di situs resmi.<br>\r\n2. Buka terminal pada sistem operasi Anda dan buat direktori baru untuk AI Code Translator.<br>\r\n3. Masuk ke direktori tersebut dengan menjalankan perintah: \r\n```bash \r\ncd /path/to/directory\r\n```\r\n4. Jalankan perintah ini dari terminal untuk mengunduh kode sumber AI Code Translator dari Github: <b><pre><code>git clone https://github.com/mckaywrigley/ai-code-translator.git</code></pre></b> \r\n5. Setelah proses cloning selesai, masuk ke direktori AI Code Translator yang telah diunduh dengan menjalankan perintah: <b><pre><code>cd ai-code-translator</code></pre></b>\r\n<br>\r\nAI Code Translator tersedia secara gratis dengan lisensi open-source di Github. Anda dapat mengunduh dan menginstalnya pada sistem operasi Anda sendiri atau menggunakan versi online yang tersedia di https://github.com/mckaywrigley/ai-code-translator\r\n\r\nInstall semua dependensi yang dibutuhkan dengan menjalankan perintah: <b><pre><code>npm install</code></pre></b>\r\n\r\nJalankan aplikasi dengan menjalankan perintah: <b><pre><code>npm start</code></pre></b>\r\n\r\nAplikasi akan berjalan pada localhost dan port defaultnya adalah 3000. Buka browser dan ketikkan <b><pre><code>http://localhost:3000</code></pre></b> pada address bar untuk membuka aplikasi AI Code Translator.	https://www.youtube.com/watch?v=0lS4LT422S4	uploads/2023/10/converter_FfVTDvV.png	4	4	1	4	\N	\N	3	meningkatkan-produktivitas-pemrograman-dengan-ai-code-translator	2023-11-03 10:02:55+00
88	2023-05-03 07:33:14.431015+00	2023-11-03 10:03:40.551233+00	AI Voice Generator: Buat Voiceover dengan Mudah	Murf.ai menyediakan Generator Suara AI dalam 20 bahasa yang berbeda.	Anda dapat memilih dari lebih dari 120 suara pembacaan teks ke suara dan membuat <i>voiceover</i> AI. Dengan aplikasi ini, Anda bisa langsung mengubah teks menjadi suara dengan mudah dan cepat.	Murf adalah generator suara AI yang dapat menciptakan voiceover manusia yang mirip untuk video, podcast, dan presentasi. Dengan Murf, Anda tidak perlu membeli peralatan rekaman mahal atau mempekerjakan penyanyi profesional. \r\n<br>\r\nPlatform ini menawarkan lebih dari 120 suara AI dengan aksen dan nada yang berbeda yang terdengar realistis dan alami. Selain itu, platform ini mendukung klona suara, mengubah suara, serta kontrol pitch, penekanan, dan kecepatan.\r\n<br>\r\nMurf memungkinkan pengguna untuk menambahkan musik dan media latar belakang pada voiceover mereka, membuatnya menjadi solusi lengkap untuk penciptaan konten suara bagi para kreator. Antarmukanya mudah digunakan dan fitur-fiturnya yang canggih membuatnya menjadi alat yang sangat berguna untuk meningkatkan konten e-learning, membuat modul pelatihan perusahaan, maupun membuat video yang menarik.\r\n<br>\r\nAudio yang dihasilkan tidak sempurna seperti manusia, tapi masih bisa diandalkan, untuk mencobanya dapat mengunjungi https://murf.ai/\r\n<br>\r\nJangan khawatir, ini gratis.	\N	uploads/2023/10/ai-voice.png	4	4	1	4	\N	\N	3	ai-voice-generator-buat-voiceover-dengan-mudah	2023-11-03 10:03:37+00
215	2024-01-04 07:05:58.76223+00	2024-01-04 07:05:58.762252+00	Pake: Sulap Web Jadi Aplikasi Desktop Keren Dengan Teknologi Rust! 💻✨	Pengemasan aplikasi yang mendukung platform Mac, Windows, dan Linux.	Pake memfasilitasi pengembangan kustom dengan dukungan untuk mereka yang mahir.	Halo teman-teman! Dalam dunia pengembangan aplikasi, keberlanjutan dan kecepatan sangatlah vital. Nah, kali ini kita akan membahas sebuah alat hebat yang dapat mempermudah membuat aplikasi dengan lebih efisien tanpa harus tahu itu kodingan *advance*. Namanya adalah [Pake](https://github.com/tw93/Pake)!\r\n\r\n## **Apa Itu Pake? 🤔**\r\nPake adalah alat pengemasan aplikasi yang mendukung platform Mac, Windows, dan Linux. Dengan ukuran paket hingga 20 kali lebih kecil dari paket Electron, sekitar 5M, Pake menjelma menjadi pilihan yang lebih ringan dan cepat dengan menggunakan kerangka Rust Tauri. Ini adalah solusi sederhana yang menggantikan pendekatan bundel lama dengan Tauri, walaupun PWA sudah cukup baik.\r\n\r\n![Pake-Twitter](https://camo.githubusercontent.com/bd33eba6f89d68a55e2c7bbfb266443506b42457f7a6726f3c821f4b2953a40f/68747470733a2f2f63646e2e666c696767792e636f6d2f757069632f6d63343178712e6a7067)\r\n\r\n## **Fitur Unggulan 🌟**\r\n-  **Lebih Ringan dan Cepat** 🎐\r\nDibangun dengan Rust Tauri, Pake menjadi lebih ringan dan cepat dibandingkan dengan kerangka berbasis JS.\r\n- **Include Package** 📦\r\nPake tidak hanya sekadar alat, tetapi juga membawa sejumlah fitur termasuk pintasan cepat, jendela imersif, dan kustomisasi minimalis.\r\n- **Support Fullscreen Mode**👻\r\nDouble-click pada bilah judul untuk beralih ke mode layar penuh dan gunakan gesture untuk navigasi pada pengguna Mac.\r\n\r\n![Pake-Poe](https://camo.githubusercontent.com/05a362001566da1f85b0abf61a660426e31ff395926e140bc1540abdea096f26/68747470733a2f2f63646e2e666c696767792e636f6d2f757069632f5a74737832332e706e67)\r\n\r\nPada dasarnya Pake melihat website url dan user sendiri dapat custom sendiri menjadi aplikasi *native* kemudian mengemasnnya menjadi bagian yang lebih kecil. Dibandingkan dengan paket Electron yang umum digunakan, Pake menghasilkan paket aplikasi hingga 20 kali lebih kecil, membantu mengurangi beban bandwidth dan mempercepat waktu pengunduhan bagi pengguna.\r\n\r\n**Contoh penggunaan di mac**\r\n\r\n![xnapped](https://camo.githubusercontent.com/03a281b0c44b576b578c087815edc7cb9c5b104b845a230a9bf60bb852b72362/68747470733a2f2f67772e616c697061796f626a656374732e636f6d2f7a6f732f6b2f7a642f70616b652e676966)\r\n\r\nPengembang dapat dengan mudah menyesuaikan pengembangan aplikasi mereka dengan menggunakan Pake CLI. Ini memungkinkan kustomisasi seperti menentukan lebar, tinggi, dan ikon aplikasi, serta fitur-fitur lainnya.\r\n\r\nPake memfasilitasi pengembangan kustom dengan dukungan untuk mereka yang mahir dalam pengembangan front-end dan Rust. Hal ini memungkinkan pengembang untuk menjalankan aplikasi mereka dengan lebih banyak fungsi sesuai kebutuhan.\r\n\r\nDengan alasan-alasan di atas, dapat disimpulkan bahwa Pake menjadi alat yang sangat penting dalam pengembangan aplikasi modern. Dengan kemampuannya yang ringan, cepat, dan mudah dikemas, Pake memungkinkan website dicompile seperti aplikasi native,  untuk fokus pada percepatan pengalaman pengguna tanpa harus mengorbankan kinerja atau ukuran aplikasi.	undefined	uploads/2024/01/pake-compress.webp	6	4	1	100	100	100	100	pake-sulap-web-jadi-aplikasi-desktop-keren-dengan-teknologi-rust	2024-01-03 17:05:00+00
75	2023-05-01 14:36:39.03393+00	2023-11-04 06:04:11.600313+00	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	Jalankan Aplikasi Android di Windows 11 dengan WSA.	WSA memungkinkan pengguna untuk menjalankan aplikasi Android langsung di desktop Windows 11.	Jika Anda seorang pengguna PC yang juga menggunakan banyak aplikasi Android dan juga development mobile apps, maka Windows Subsystem for Android (WSA) dapat menjadi fitur yang sangat berguna untuk Anda. Dengan mengaktifkan WSA pada Windows 11, Anda dapat menjalankan aplikasi Android langsung di desktop PC Anda tanpa perlu menggunakan emulator atau ponsel cerdas tambahan. Fitur inovatif ini dapat meningkatkan produktivitas dan kemudahan penggunaan, serta memungkinkan integrasi yang lebih baik antara aplikasi Android dan sistem operasi Windows. Dalam artikel ini, penulis akan membahas cara mudah menginstal dan mengaktifkan WSA pada Windows 11 serta langkah-langkah untuk mulai menggunakan fitur ini dengan cepat dan mudah.\r\n\r\nLangkah pertama yang harus dilakukan adalah memastikan bahwa sistem operasi Windows 11 Anda sudah ditingkatkan ke versi build 22000.258 atau dengan versi <i>Insider</i>, karena fitur WSA hanya tersedia pada build tersebut atau yang lebih baru. Setelah itu, Anda harus mengaktifkan fitur Developer Mode pada Windows 11 agar dapat mengaktifkan fungsi Windows Subsystem for Android. Setelah semua persyaratan terpenuhi, langkah selanjutnya adalah mengunduh dan menginstal paket WSA dari Microsoft Store. Sebelum memulai langkah-langkahnya, pastikan membaca <b><i>System requirements\r\n</i></b> yang disarankan oleh Microsoft.	\N	uploads/2023/10/wsa.webp	6	1	1	\N	\N	\N	3	tutorial-install-windows-subsytem-for-android-wsa-pada-windows-11	2023-11-04 06:04:08+00
147	2023-11-06 08:23:04.254593+00	2023-11-10 01:51:22.547418+00	Turnip Boy Commits Tax Evasion	Claim now	Petualangan yang penuh humor, di mana bermain sebagai lobak yang mencoba menghindari pajak dan melawan pemerintah sayuran yang korup!	Berikut link gratis gamenya; \r\nhttps://store.epicgames.com/en-US/p/turnip-boy-commits-tax-evasion-fb2084	\N	uploads/2023/11/turnip-big-size.webp	56	1	1	1	100	1	1	turnip-boy-commits-tax-evasion	2023-11-09 08:23:00+00
145	2023-11-06 03:13:40.082898+00	2023-11-06 09:32:02.726358+00	Upscayl Membuat Image Menjadi Lebih Jelas Dengan AI	Memperbesar dan meningkatkan kualitas gambar beresolusi rendah	Menggunakan model AI untuk meningkatkan gambar Anda dengan menebak detail yang mungkin ada. Untuk mencapai ini, Upscayl menggunakan Real-ESRGAN	Upscayl adalah alat yang kuat untuk meningkatkan kualitas gambar. Dengan menggunakan algoritma AI canggih, itu dapat memperbesar gambar tanpa mengorbankan kualitas. \r\n\r\n\r\nUntuk software ini tersedia diberbagai OS, berikut list versi install;\r\n\r\n#### Portable Method\r\n\r\n1. Pergi ke [releases section](https://github.com/upscayl/upscayl/releases/latest)\r\n2. Download the `upscayl-x.x.x-linux.AppImage` file.\r\n3. Klik kanan  AppImage -> Go to Permissions tab -> Check 'allow file to execute' and then double click the file to run Upscayl.\r\n\r\n*Bisa digunakan pada distro  seperti RPM (Fedora), DEB (Debian/Ubuntu based), dan ZIP (Linux OS).*\r\n\r\n### 🍎 macOS\r\n\r\n1. Pergi ke [releases section](https://github.com/upscayl/upscayl/releases/latest)\r\n2. Download the `upscayl-x.x.x-mac.dmg` file.\r\n3. Double click dmg, drag Upscayl icon dalam Applications folder.\r\n4. Buka Finder, click 'Applications' tab in the left sidebar. Find Upscayl and right click on it. Select 'Open'.\r\n5. In the window that appears, press 'Open' yet again.\r\n\r\n### 🐌 Windows\r\n(Windows 10 and later)\r\n\r\n1. Pergi ke [releases section](https://github.com/upscayl/upscayl/releases/latest)\r\n2. Download the `.exe` file.\r\n3. Double click exe file, dan tunggu installasi selesai,	\N	uploads/2023/11/upscale_ai.webp	4	4	1	4	100	100	3	upscayl-membuat-image-menjadi-lebih-jelas-dengan-ai	2023-11-06 09:31:59+00
149	2023-11-06 09:21:24.11683+00	2023-11-06 09:27:15.191712+00	Beasiswa Developer Indonesia	Claim now	Program beasiswa yang diselenggarakan oleh Indosat Ooredoo Hutchison dengan tujuan untuk mencetak developer/programmer muda Indonesia yang siap bersaing di dunia ekonomi digital.	Program ini merupakan bagian dari Corporate Social Responsibility (CSR) Indosat Ooredoo Hutchison dalam pilar Pendidikan Digital untuk membangun bangsa Indonesia sebagai Digital Nation.\r\n\r\nIDCamp 2023 menawarkan beasiswa pelatihan coding online di 8 alur belajar (learning path) yang mencakup Android Developer, Front-End Web Developer, Machine Learning Developer, Multi-Platform App Developer, Back-End Developer, React Developer, DevOps Engineer, dan Data Scientist. Alur belajar tersebut tersedia dalam berbagai level, mulai dari dasar (basic), pemula (beginner), menengah (intermediate), hingga mahir (expert).\r\n\r\nModul pelatihan online IDCamp 2023 dikembangkan oleh Dicoding, yang merupakan Google Authorized Training Partners di Indonesia. Dalam pengembangan materinya, Dicoding bekerja sama dengan Indosat Ooredoo Hutchison menggunakan use case yang sering dijumpai dalam dunia industri, terutama di bidang telekomunikasi dan digital. Selain itu, program ini juga diperkuat dengan metode mentoring secara online.\r\n\r\n### Syarat Pendaftaran\r\n- Warga Negara Indonesia\r\n-  Berminat meningkatkan skill di bidang teknologi\r\n- Memiliki laptop/komputer\r\n\r\nJika berminat dapat mengikuti intruksi dari link `official` berikut:\r\nhttps://idcamp.ioh.co.id/	undefined	uploads/2023/11/idcamp-banner.png	\N	4	1	100	100	100	1	beasiswa-developer-indonesia	2023-11-24 09:22:21+00
146	2023-11-06 04:19:02.058484+00	2023-11-07 05:16:49.764237+00	PaperWM: Meningkatkan Produktivitas dengan GNOME Shell	Memudahkan Anda berpindah antara jendela	PaperWM, ekstensi GNOME Shell, mengatur desktop Anda seperti lembaran kertas, meningkatkan produktivitas dan efisiensi  multitask.	PaperWM memungkinkan Anda untuk mengatur jendela aplikasi seperti lembaran kertas yang disusun berdampingan. Anda dapat dengan mudah menggeser antara jendela dengan menggunakan tombol panah atau melalui tampilan aktivitas. Ekstensi ini juga memungkinkan Anda untuk mengelompokkan jendela ke dalam 'nama ruang' untuk lebih meningkatkan produktivitas.\r\n\r\nSalah satu fitur unik dari PaperWM adalah kemampuannya untuk mengingat susunan jendela Anda bahkan setelah Anda logout atau restart komputer. Ini sangat berguna jika Anda sedang mengerjakan proyek yang membutuhkan beberapa jendela terbuka sekaligus dan Anda tidak ingin mengatur ulang semuanya setiap kali Anda masuk ke komputer Anda.\r\n\r\nUntuk menginstal PaperWM, Anda perlu mengkloning repositori GitHub PaperWM dan menjalankan skrip instalasi yang disediakan. Anda juga perlu mengaktifkan ekstensi melalui GNOME Tweak Tool. Artikel ini juga mencakup beberapa tips dan trik untuk menggunakan PaperWM secara efektif, seperti navigasi keyboard dan penyesuaian tampilan.\r\n\r\nSecara keseluruhan, PaperWM adalah alat yang berguna untuk meningkatkan produktivitas Anda saat menggunakan GNOME Shell. Dengan kemampuannya untuk mengatur jendela dengan cara yang intuitif dan mengingat susunan jendela Anda, ini bisa menjadi tambahan yang bagus untuk alur kerja Anda.\r\n\r\n![Demo PaperWM](https://i.ibb.co/1KXjt9X/paperwm.gif)	\N	uploads/2023/11/paperwm-selft.webp	6	2	1	100	100	100	3	paperwm-meningkatkan-produktivitas-dengan-gnome-shell	2023-11-06 09:32:11+00
163	2023-11-08 04:35:20.132671+00	2023-11-08 04:35:20.13269+00	LocalSend, Aplikasi Open-Source Memudahkan Mengirimakan Files Antar Device Tanpa Koneksi Internet	Berbagi file dan pesan secara aman dengan perangkat di sekitar.	Aplikasi lintas platform yang memungkinkan komunikasi yang aman antara perangkat menggunakan REST API dan enkripsi HTTPS. Berbeda dengan aplikasi pesan lainnya yang bergantung pada server eksternal.	LocalSend menggunakan protokol komunikasi aman yang memungkinkan perangkat untuk berkomunikasi satu sama lain menggunakan REST API. Semua data dikirim secara aman melalui HTTPS, dan sertifikat TLS/SSL dihasilkan secara instan di setiap perangkat, menjamin keamanan maksimum.  Dalam hal pengiriman data atau files, aplikasi ini menggunakan transfer menggunakan wifi masing-masing device, sehingga pengiriman dalam bentuk data yang besar juga cukup cepat dan aman karena dilindungi protokol TLS.  Jika tertarik bisa download dari official link berikut: https://github.com/localsend/localsend/releases/	undefined	uploads/2023/11/LocalSend-compress.webp	55	4	1	100	100	100	100	localsend-aplikasi-open-source-memudahkan-mengirimakan-files-antar-device-tanpa-koneksi-internet	2023-11-07 01:09:00+00
164	2023-11-08 05:13:42.13221+00	2023-11-09 02:17:14.034912+00	AGrok AI: Inteligensi Buatan "Aggresive" dari Elon Musk	Grok AI: Inteligensi Buatan "Aggresive" dari Elon Musk	Dikembangkan oleh perusahaan terbarunya, xAI, Grok dirancang untuk menjawab pertanyaan dengan sedikit humor dan memiliki kecenderungan untuk menjawab pertanyaan 'pedas'.	Grok, yang dalam kalangan teknologi berarti "memahami", adalah model AI yang dikembangkan oleh xAI, perusahaan terbaru Elon Musk. Grok dibangun di atas model bahasa yang disebut Grok-1 yang memiliki 33 miliar parameter. Grok dikembangkan dalam waktu dua bulan, yang relatif singkat menurut standar industri. Salah satu keunggulan utamanya adalah pengetahuan real-time tentang dunia melalui platform X, atau platform yang sebelumnya dikenal sebagai Twitter. \r\n\r\n####  Karakteristik Grok Grok dirancang untuk menjawab pertanyaan dengan sedikit humor dan memiliki kecenderungan 'aggressive'. Namun, pengumuman dari xAI tidak menjelaskan apa yang dimaksud dengan ini. Sebagian besar model AI komersial akan menolak untuk menghasilkan konten yang secara eksplisit seksual, kekerasan, atau ilegal, dan mereka dirancang untuk menghindari pengungkapan bias yang diambil dari data pelatihan mereka.  \r\n\r\nGrok menyatakan: "Kami sedang membangun alat AI yang memberikan manfaat maksimal bagi seluruh umat manusia. Kami percaya bahwa penting untuk merancang alat AI yang berguna bagi orang dari semua latar belakang dan pandangan politik. Kami juga ingin memberdayakan pengguna kami dengan alat AI kami, sesuai dengan hukum. Tujuan kami dengan Grok adalah untuk mengeksplorasi dan mendemonstrasikan pendekatan ini secara publik".  Grok AI adalah langkah berani dalam dunia AI yang terus berkembang. Dengan sedikit penghalang dan kecenderungan 'pemberontak', Grok menawarkan pendekatan baru untuk model AI. Bagaimana hal ini akan mempengaruhi penggunaan AI di masa depan masih harus dilihat.	undefined	uploads/2023/11/grox_ai.webp	4	4	1	100	100	100	100	grok-ai-inteligensi-buatan-aggresive-dari-elon-musk	2023-11-07 15:03:00+00
73	2023-05-01 09:23:52.913869+00	2023-11-04 06:05:21.678621+00	Perbedaan MBR dan GPT Saat Pemilihan Boot	Memilih Jenis Partisi	Bingung milih MBR atau GPT saat memilih di BIOS, Artikel ini discuss perbedaannya.	Saat menginstall ulang sistem operasi pada perangkat komputer, seringkali kita harus memilih antara menggunakan MBR (Master Boot Record) atau GPT (GUID Partition Table) sebagai tipe partisi harddisk. Tipe partisi ini bisa mempengaruhi bagaimana sistem operasi dan data diatur pada harddisk, sehingga penting untuk memahami perbedaan antara keduanya.\r\n<br>\r\nMBR dan GPT adalah dua jenis tipe partisi yang berbeda dalam cara mereka mengorganisir data pada harddisk. MBR adalah tipe partisi lama yang digunakan sejak zaman BIOS (Basic Input/Output System), sedangkan GPT merupakan tipe partisi baru yang diperkenalkan pada era modern UEFI (Unified Extensible Firmware Interface).\r\n<br>\r\nPerbedaan utama antara MBR dan GPT adalah kapasitas dan jumlah partisi yang dapat didukung. MBR hanya mendukung partisi hingga 2TB dan maksimal 4 partisi primer, sementara GPT mendukung partisi hingga lebih dari 9 zettabyte dan tidak terbatas oleh batasan partisi primer.\r\n<br>\r\nSelain itu, GPT juga memiliki fitur keamanan yang lebih baik daripada MBR, seperti backup header partisi dan checksum yang membantu melindungi data dari kerusakan atau kegagalan disk. GPT juga dapat mendukung booting sistem operasi secara langsung dari partisi tertentu tanpa memerlukan boot loader eksternal seperti yang diperlukan oleh MBR.\r\n<br>\r\nNamun, satu hal yang perlu diperhatikan saat memilih antara MBR dan GPT adalah kompatibilitas dengan sistem operasi dan hardware. Beberapa sistem operasi dan hardware mungkin tidak mendukung GPT, meskipun sebagian besar sistem modern saat ini dapat mendukung GPT.\r\n<br>\r\nJadi, saat menginstall ulang sistem operasi pada perangkat komputer, pastikan untuk mempertimbangkan tipe partisi apa yang ingin digunakan. Jika harddisk Anda lebih dari 2TB atau memerlukan partisi lebih dari 4, maka GPT mungkin menjadi pilihan yang lebih baik. Namun, jika Anda menggunakan hardware atau sistem operasi yang tidak mendukung GPT, maka MBR bisa menjadi pilihan yang lebih aman dan stabil. Untuk menggunakan MBR, hanya membutuhkan Boot Mode denngan Pilihan Legacy  yang tersedia di mayoritas motherboard yang sudah berumur. Sehingga, hampir semua komputer yang dibuat dalam beberapa tahun terakhir dapat menggunakan MBR tanpa masalah.\r\n<br>\r\nSedangkan untuk menggunakan GPT, harddisk membutuhkan komputer dengan UEFI (Unified Extensible Firmware Interface) atau BIOS yang mendukung boot mode UEFI. Kebanyakan laptop dan desktop yang dirilis pada tahun 2011 atau lebih baru sudah dilengkapi dengan UEFI, sehingga seharusnya dapat mendukung GPT. Namun, beberapa motherboard lama mungkin masih menggunakan BIOS tradisional dan tidak mendukung boot mode UEFI, sehingga tidak dapat menggunakan GPT.\r\n<br>\r\nSecara umum, spesifikasi hardware yang diperlukan untuk MBR dan GPT memiliki perbedaan. Namun, UEFI menjadi faktor penting ketika menggunakan GPT, karena harddisk dengan GPT hanya dapat digunakan pada sistem operasi yang mendukung UEFI. Jadi, pastikan untuk memeriksa spesifikasi hardware dan sistem operasi sebelum memilih tipe partisi yang akan digunakan pada harddisk.\r\n<br>	\N	uploads/2023/10/perbedaan-mbr-dan-gpt.jpg	\N	4	1	\N	\N	\N	3	perbedaan-mbr-dan-gpt-saat-pemilihan-boot	2023-11-04 06:05:16+00
74	2023-05-01 10:19:04.120858+00	2023-11-04 06:05:00.776075+00	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	Secure File Access	Sandbox aman akses file dicurigai. Lindungi sistem kamu dari ancaman cyber saat tetap bisa akses file yang diinginkan.	Dalam era digital yang semakin berkembang, keamanan dan perlindungan data pengguna menjadi sangat penting. Microsoft, sebagai perusahaan teknologi terdepan, mengambil langkah besar dengan memperkenalkan fitur Sandbox pada Windows, demi meningkatkan keamanan dan kenyamanan penggunanya.\r\n<br>\r\nSandbox pada Windows merupakan fitur yang memungkinkan pengguna untuk menjalankan aplikasi atau perangkat lunak dalam lingkungan yang terisolasi dan terkontrol, sehingga tidak dapat mengakses sistem utama atau data pengguna. Hal ini sangat penting untuk melindungi pengguna dari potensi ancaman keamanan, seperti virus, malware, dan serangan peretas.\r\n<br>\r\nKepala Divisi Keamanan Microsoft Indonesia, mengatakan, "Fitur Sandbox pada Windows bukan hanya menjadi solusi keamanan yang efektif, tetapi juga memberikan kemudahan bagi pengguna untuk menguji aplikasi atau perangkat lunak tanpa khawatir merusak sistem utama mereka."\r\n<br>\r\nFitur Sandbox ini juga memudahkan pengembang perangkat lunak untuk menguji produk mereka dalam lingkungan yang aman dan terkontrol, sehingga mereka dapat memastikan bahwa produk yang mereka hasilkan bebas dari kelemahan keamanan atau gangguan yang mungkin terjadi jika diuji pada sistem utama pengguna. Salah satu contoh penting dari penggunaan fitur Sandbox adalah ketika pengguna ingin mengakses file atau dokumen yang dicurigai dapat membahayakan sistem mereka. Dengan menjalankannya dalam lingkungan Sandbox, pengguna dapat memeriksa dan mengidentifikasi potensi ancaman, tanpa membahayakan sistem utama mereka.\r\n<br>\r\nSelain itu, fitur Sandbox pada Windows juga mendukung pengelolaan sumber daya yang efisien, karena memungkinkan pengguna untuk menghentikan proses yang tidak diperlukan dalam lingkungan terisolasi tersebut. Hal ini tentunya membuat penggunaan sumber daya sistem lebih optimal dan efisien.\r\n<br>\r\n<h1>Berikut langkah-langkah untuk mengaktifkan Windows Sandbox di Windows 11</h1>\r\n<br>\r\n<ol>\r\n<li>Buka <i>Start Menu</i></li>\r\n<li>Cari dan pilih <i>keyword <b>Turn Windows features on or off.</b></i> </li>\r\n<li>Pastikan Windows Sandbox telah tercentang, jika belum lakukan install dengan menceklist <i>Checkbox</i> Windows Sandbox. Lalu Restart.\r\n<li>Cari dan pilih Windows Sandbox.</li>\r\n</ol>\r\n<br>\r\nBerikut <i>preview</i> Windows Sandbox yang telah berhasil dijalankan, sekarang anda dapat mencoba file yang menurut anda mencurigakan tanpa harus was-was akan bahaya yang mengintai.	\N		\N	1	1	\N	\N	\N	3	skeptis-terhadap-file-yang-diterima-namun-penasaran-ingin-mengakses-gunakan-sandbox	2023-11-04 06:04:57+00
205	2023-12-04 09:19:54.317144+00	2023-12-04 09:19:54.317165+00	Pentingnya Codium AI sebagai Alternatif Gratis untuk GitHub Copilot 🚀	Membantu pengembang dalam menulis kode dengan cepat dan efisien.	Salah satu alat yang paling populer dan kuat pesaing GitHub Copilot.	## Pengenalan\r\nSelama beberapa tahun terakhir, AI (Artificial Intelligence) telah mengubah cara kita berinteraksi dengan perangkat lunak dan mengembangkan kode. Salah satu alat yang paling populer dan kuat adalah GitHub Copilot. Namun, tidak semua orang memiliki akses atau anggaran untuk alat ini. Inilah mengapa Codium AI, sebuah alternatif gratis untuk GitHub Copilot, semakin populer. Dalam artikel ini, kami akan menjelaskan mengapa Codium AI begitu penting untuk komunitas pengembang dan bagaimana Anda dapat memanfaatkannya. Mari kita mulai!\r\n\r\n## Apa itu Codium AI dan Bagaimana Cara Kerjanya?\r\nCodium Free Code Completion adalah alat berbasis AI yang dirancang untuk membantu pengembang dalam menulis kode dengan cepat dan efisien. Ini dapat digunakan di berbagai IDE dan editor teks, membuatnya sangat fleksibel. Bagaimana Codium AI bekerja? Ini menggunakan model bahasa berbasis GPT-3.5, yang telah dilatih dengan jutaan potongan kode untuk memberikan saran dan penyelesaian yang akurat.\r\n\r\n## Keuntungan Utama Codium AI\r\nMengapa Codium AI begitu penting? Mari kita lihat beberapa manfaat utamanya:\r\n\r\n- 🚀 **Peningkatan Produktivitas**: Dengan Codium AI, Anda dapat menulis kode dengan lebih cepat, menghemat waktu berharga Anda.\r\n- 💡 **Saran Pintar**: Algoritma kecerdasan buatan Codium memberikan saran cerdas yang dapat membantu Anda menghindari kesalahan umum.\r\n- 💬 **Dukungan Bahasa**: Codium mendukung berbagai bahasa pemrograman, menjadikannya alat yang berguna untuk berbagai jenis proyek.\r\n- 💻 **Integrasi yang Mudah**: Anda dapat mengintegrasikan Codium AI dengan IDE atau editor teks favorit Anda dengan mudah.\r\n\r\n## Mengapa Gratis adalah Penting?\r\nKita semua tahu bahwa pengembangan perangkat lunak bisa menjadi mahal. Codium AI memberikan akses ke teknologi AI yang canggih tanpa biaya berlangganan. Ini memungkinkan pengembang dengan anggaran terbatas untuk tetap kompetitif.\r\n\r\n## Perbandingan dengan GitHub Copilot\r\nSekarang, Anda mungkin bertanya-tanya, "Bagaimana Codium AI dibandingkan dengan GitHub Copilot?" Meskipun Copilot memiliki banyak fitur canggih, Codium Free Code Completion mampu bersaing dengan baik, terutama untuk proyek-proyek kecil dan tim yang kecil.\r\n\r\n## Bagaimana Cara Menggunakan Codium AI?\r\nMenggunakan Codium AI sangat mudah. Anda hanya perlu menginstalnya di IDE atau editor teks Anda, dan itu akan mulai memberikan saran dan penyelesaian kode secara otomatis saat Anda menulis.\r\n\r\n## FAQs (Pertanyaan yang Sering Diajukan)\r\n\r\n**1. Apakah Codium AI benar-benar gratis?**\r\n   - Ya, Codium AI adalah alat gratis untuk pengembang.\r\n**2. Dapatkah saya menggunakannya di semua IDE?**\r\n   - Codium AI dapat diintegrasikan dengan banyak IDE populer.\r\n**3. Seberapa akurat saran Codium AI?**\r\n   - Codium AI memberikan saran yang sangat akurat berdasarkan model bahasa GPT-3.5.\r\n**4. Apakah ada batasan penggunaan Codium AI?**\r\n   - Tidak ada batasan penggunaan yang ketat.\r\n**5. Apakah ada dukungan komunitas untuk Codium AI?**\r\n   - Ya, ada komunitas aktif yang dapat membantu Anda dengan pertanyaan dan masalah.\r\n**6. Bagaimana cara memulai dengan Codium AI?**\r\n   - Unduh dan instal plugin Codium AI di IDE atau editor teks Anda.\r\n\r\nCodium Free Code Completion adalah alternatif yang menarik dan gratis untuk GitHub Copilot yang dapat membantu Anda meningkatkan produktivitas dalam pengembangan perangkat\r\nlunak. Ini adalah alat yang sangat berguna, terutama bagi pengembang dengan anggaran terbatas. Jadi, jangan ragu untuk mencobanya dalam proyek Anda dan lihat bagaimana Codi\r\num AI dapat membantu Anda menulis kode dengan lebih efisien! 💻🤖✨.	undefined	uploads/2023/12/codeium_ai_poster.png	4	4	1	100	100	100	100	pentingnya-codium-ai-sebagai-alternatif-gratis-untuk-github-copilot	2023-12-03 01:12:00+00
216	2024-01-05 09:09:06.239555+00	2024-01-06 07:15:22.173841+00	Marvel's Guardians of the Galaxy	Pemain dapat menjelajahi berbagai lokasi eksotis di seluruh galaksi.	Game aksi-petualangan yang dapat dinikmati berbagai kalangan.	Epic Games memberikan hadiah menarik kepada para gamer dengan menawarkan Marvel's Guardians of the Galaxy secara gratis. Namun, perlu diingat bahwa penawaran ini hanya berlaku hingga tanggal 11 Januari 2024. Jangan lewatkan kesempatan emas ini untuk menjelajahi petualangan epik bersama para pelindung galaksi!.\r\n\r\n**Bagaimana Cara Mengklaim Marvel's Guardians of the Galaxy secara Gratis?**\r\n\r\nAgar dapat menikmati game ini tanpa biaya, ikuti langkah-langkah sederhana berikut ini sebelum 11 Januari 2024, kunjungi halaman resmi Marvel's Guardians of the Galaxy di Epic Games Store [di sini](https://store.epicgames.com/en-US/p/marvels-guardians-of-the-galaxy).	undefined	uploads/2024/01/guardians.webp	56	1	13	1	1	1	1	marvels-guardians-of-the-galaxy	2024-01-10 17:15:00+00
207	2023-12-06 06:29:46.32628+00	2023-12-06 06:39:31.45532+00	Jitsu Squad	Game ini dibalut sama keganasan dan kecepatan combo	Jitsu Squad, game berisi 4 player yang siap menghajar musuh dengan gaya action cepat dan badas!	Jitsu Squad, game berisi 4 player yang siap menghajar musuh dengan gaya action cepat dan badas! Makin seru lagi, game ini meracik campuran dua dunia: keasyikan game brawler klasik macam Streets of Rage dan Final Fight, lalu dibalut sama keganasan dan kecepatan game-game lawas seperti Marvel vs. Capcom II, Dragonball FighterZ & Super Smash Bros. Jadi, siap-siap ya! 👊💫\r\n\r\nBanyak-banyakin kumpulin soul orbs, biar bisa pake Armor Ultimate. Kamu bisa jadi Superman, nggak bisa dikalahkan sekaligus nambah kekuatan juga. Ikut latihan pukulan sampai ke jurus-jurus spesialmu, semua jadi makin advance! 💪🛡️\r\n\r\n• Jurus-jurus super yang bikin kamu makin pro! 🌟\r\n\r\n• Kombinasi serangan bisa nyampe 500+, berasa jadi Bruce Lee! 🥋\r\n\r\n• Transformasi karakter yang bikin kamu ngerasa jadi pahlawan super! 🦸‍♀️\r\n\r\n• Dukungan dari karakter-karakter lain yang bikin kamu makin bertenaga! 🤝\r\n\r\n• Dapatkan berbagai musuh seru dan level-level unik yang bikin penasaran! 👾🏞️\r\n\r\n• Seru bareng teman, main sampai 4 orang sekalian! 🥳\r\n\r\n• Senjata tambahan yang bikin karaktermu makin keren! 🗡️\r\n\r\n• Level up karaktermu dengan sistem upgrade! 👑\r\n\r\n• Kombinasi serangan yang ga ada habisnya! 😲\r\n\r\n• Belajar nge-counter dan parrying serangan musuh! 🔄\r\n\r\n\r\nKamu bisa dapatkan game ini [GRATIS di Epic Games](https://store.epicgames.com/en-US/p/jitsu-squad-af3f2f). Tapi jangan sampe ketinggalan, karena cuma tersedia gratis dalam waktu terbatas.	undefined	uploads/2023/12/jitsu_squad.webp	56	1	1	1	1	1	1	jitsu-squad	2023-12-06 20:07:00+00
208	2023-12-06 06:40:27.507559+00	2023-12-06 06:40:27.507581+00	Mighty Fight Federation	Setiap karakter punya gaya main, taktik, dan gerakan super mereka sendiri.	Coba pertandingan 'free-for-all' yang kacau balau tapi penuh adrenalin.	Yuk ikutan beraksi di arena besar Mighty Combat! Rasa tegangnya pol bila kamu lembar lawan ke dinding, lempar mereka mengudara, dan lanjut dengan serangan gencar dan gesit. Bukan pertarungan biasa, ini aksi yang seolah-olah nggak kenal hukum gravitasi!\r\n\r\nPilih tokoh favoritmu dari 14 karakter, setiap karakter punya gaya main, taktik, dan gerakan super mereka sendiri. Mau yang gesit dan rahasia, atau yang berotot dengan pukulan dahsyat? Santai, ada tokoh yang pas buat kamu.\r\n\r\nBuat yang suka tantangan personal, cobain sentuhan satu lawan satu. Atau, kalo lebih suka kerja tim, rame-rame dengan fighter lain bisa jadi pilihan. Pengen lebih seru? Coba pertandingan 'free-for-all' yang kacau balau tapi penuh adrenalin. Ini bukan cuma soal bertahan, tapi soal mendominasi. Yuk tunjukkan siapa yang berkuasa di arena!\r\n\r\nMighty Combat, arena yang siap buat kamu kuasai. Siap bertarung dan jadi yang terhebat?\r\n\r\nYuk, ramaikan arena dengan aksi seru di Mighty Combat! Kabar baiknya, nih, kamu bisa dapatkan game ini [GRATIS di Epic Games](https://store.epicgames.com/en-US/p/mighty-fight-federation). Tapi jangan sampe ketinggalan, karena cuma tersedia gratis dalam waktu terbatas. Jadi, buruan sikat sebelum keabisan! Siap bertarung dan jadi yang terhebat di Mighty Combat?	undefined	uploads/2023/12/might_fight.webp	56	1	1	1	1	1	1	mighty-fight-federation	2023-12-06 16:07:00+00
210	2023-12-21 15:10:31.706586+00	2023-12-21 15:10:31.706607+00	Shortcat: Klik Interface di macOS Tanpa Mouse, Solusi Praktis untuk Programmer! 🖱️💨💻: Gratis! 🚀	Memungkinkan navigasi dengan mudah hanya menggunakan keyboard.	Mekanisme Shortcat, terasa seperti vim yang terdapat di mana-mana👨‍💻.	Jika kamu sudah lelah klik-klik dengan mouse, Shortcat adalah jawabannya! Navigasi interface di macOS tidak lagi memerlukan mouse. Shortcat telah memperbarui cara Anda berinteraksi dengan elemen-elemen di layar, memungkinkan Anda mengklik dengan mudah hanya menggunakan keyboard. Mekanisme Shortcat, terasa seperti vim yang terdapat di mana-mana👨‍💻.\r\n\r\n## Fitur-Fitur\r\n### Pencarian Cepat\r\nBingung mencari elemen atau navigasi tanpa menyentuh mouse? 🤔 Shortcat punya solusinya! Gunakan fitur pencarian, cukup ketik beberapa huruf, voila – elemen yang kamu cari ada di depan mata. 🚀 \r\n![shorcatFinf](https://i.imgur.com/bdQWigz.gif)\r\n\r\n### Pemilihan yang Mudah\r\nShortcat adalah tentang kecepatan 🏎️ Setelah hasil muncul, ada berbagai cara untuk memilih dengan pasti sesuai sasaran. \r\n\r\n### Aksi Seru Tanpa Mouse\r\nKlik, klik kanan, klik dua kali – semuanya hanya dengan keyboard! Shortcat memungkinkan kamu meniru aksi mouse dengan mudah, khusus bagian programer atau developer ini adalah fitur yang sangat menarik perhatian, pengurangan penggunaan mouse dapat membuat fokus menjadi hanya pada keyboard semata. 🎮\r\n\r\n### Dukungan Emoji untuk Gaya Ketikmu!\r\nTahukah kamu bahwa kamu bisa menambahkan sentuhan kepribadian ke dalam kode kamu dengan menggunakan emoji? Shortcat mendukung penyisipan emoji – tinggal ketik ':' dan nama emoji.\r\n![OpenAI Logo](https://i.imgur.com/qTZQb3U.gif)\r\n\r\n\r\n## Mengapa "Ngoding Vim di Mana-mana" Sangat Penting:\r\n\r\n### Tingkatkan Alur Kerjamu!\r\n\r\nCoba lihat setting dari aplikasi shorcat dan ubah sesuai dengan keinginan:\r\n![ShorcatSetting](https://i.imgur.com/cZj1TrR.png)\r\n\r\nDengan pemetaan sederhana ini, kamu bisa memanggil Shortcat dengan sekali tekan. Bayangkan menerapkannya ke semua alat dan aplikasimu – itulah yang kita sebut ngoding Vim di mana-mana! 🌐\r\n\r\n### Tingkatkan Produktivitas: Impian Setiap Programmer\r\nBayangkan seperti menggunakan Vim di mana-mana, bukan hanya sekadar gaya, melainkan perubahan besar. Bayangkan efisiensi navigasi tanpa mengangkat jari dari keyboard – impian setiap programmer. 💤\r\n\r\nUntuk menggunakan aplikasi ini dapat kunjungi [website resmi mereka](https://shortcat.app/). Di sana, Anda dapat mengeksplorasi bagaimana Shortcat bisa menjadi kunci untuk meningkatkan alur kerja Anda tanpa perlu mengangkat jari dari keyboard.\r\n\r\nDan untuk yang suka kemudahan, ada alternatif pemasangan melalui Brew dengan perintah sederhana: `brew install shortcat`.	undefined	uploads/2023/12/shorcat_cover.webp	6	6	13	100	100	100	3	shortcat-klik-interface-di-macos-tanpa-mouse-solusi-praktis-untuk-programmer-gratis	2023-12-20 15:02:00+00
211	2023-12-23 01:46:46.79649+00	2023-12-23 01:50:55.351649+00	Art of Rally	Epic Games bagi-bagi lagi	Jangan sia-siakan kesempatan buat yang gratis	Hari ini terakhir untuk seru-seruan bareng game keren, Art of Rally! Epic Games bagi-bagi game gratis.\r\n\r\n**Gimana Cara Dapetinnya?** Langsung aja ke halaman resmi: [Art of Rally - Epic Games](https://store.epicgames.com/en-US/p/art-of-rally). Klik tombol "GET", game ini bakal jadi milikmu.\r\n\r\n**Kenapa Harus Punya Art of Rally? 🏎️✨**\r\n\r\n1.  Grafis Unik: Nikmati visual animasi yang santai tapi unik .\r\n2.  Gameplay Seru: Ayo rasakan sensasi balapan melalui berbagai lintasan yang menantang dan lebih dari 150 mobil yang dapat dicoba.\r\n3.  Gratis!: Ini kesempatan langka, dan gak perlu keluarin uang sepeser pun!\r\n\r\n**Catat! Hanya Sampai 23 Desember!** Jadi, jangan sampai ketinggalan! Langsung aja ke [Epic Games Store](https://store.epicgames.com/en-US/p/art-of-rally)!	undefined	uploads/2023/12/artofrally-canva.webp	56	1	13	1	1	1	1	art-of-rally	2023-12-22 21:50:00+00
212	2023-12-26 07:01:14.673323+00	2023-12-26 07:01:14.673348+00	The Outer Worlds: Spacer's Choice Edition	Gratis lagi dari Epic Games	Dapatkan hanya hitungan jam saja	Kejutan lagi dari Epic Games🚀✨ \r\n🎮🆓 Dapatkan *The Outer Worlds: Spacer's Choice Edition* **GRATIS** di [Epic Games Store](https://store.epicgames.com/en-US/p/the-outer-worlds-spacers-choice-edition)! 🌌✨ .\r\nSegera claim hanya dibagikan gratis dalam jangka waktu 24 jam saja.	undefined	uploads/2023/12/the_outer.webp	56	1	13	1	1	1	1	the-outer-worlds-spacers-choice-edition	2023-12-25 17:00:00+00
213	2024-01-02 07:57:42.326996+00	2024-01-02 07:57:42.327027+00	IINA Modern Video Player macOS	IINA: Pemutar Video Kekinian di macOS! 🚀🍏	Kekinian, bebas buffer, format luas! Rasakan pengalaman nonton tanpa kompromi. 🎥🌟	Hari ini kita akan membahas satu kelebihan pemutar video modern: IINA. Kenapa sih IINA ini dipilih sebagian user daripada yang lain, seperti VLC? Yuk, kita selami bareng-bareng!\r\n\r\n**1. Kemudahan Penggunaan: No More Confusion! 🤯**\r\nBagaimana rasanya saat kita bingung dengan antarmuka pemutar video? IINA punya jawaban! Antarmuka yang simpel dan friendly, nggak bikin pusing. Jadi, urusan memutar video jadi lebih santai.\r\n\r\n**2. Performa Tanpa Batas: Nge-Play Tanpa Buffer! 🚀**\r\nIINA memberikan performa tanpa batas dengan pemutaran video yang mulus. Nggak ada buffer-bufer mengganggu, bikin pengalaman menonton jadi lebih seru.\r\n\r\n**3. Dukungan Format Luas: Apa Pun Bisa Dimainkan! 🔄**\r\nIINA bukan cuma bisa memainkan video biasa. Dukungan formatnya yang luas membuatnya bisa menangani segala jenis file, dari yang biasa hingga yang eksotis!\r\n\r\n**4. Ekstensi untuk macOS: Jadi Bagian Dari Ekosistem! 🍏**\r\nMengapa IINA lebih diunggulkan daripada VLC? Karena IINA terintegrasi dengan sempurna dalam ekosistem macOS. Lebih dari sekadar pemutar video, ia adalah teman setia untuk pengguna Mac.\r\n\r\n**5. Minimalis, Tapi Powerful: Gaya Minimal, Hasil Maksimal! 💪**\r\nTidak seperti pemutar video lain yang berlebihan, IINA hadir dengandesain minimalis yang memukau. Tetapi, jangan tertipu oleh tampilannya yang sederhana; di balik itu semua adalah kekuatan yang luar biasa.\r\n\r\nCek aja di GitHub! IINA udah dikasih banyak 'stars' sama komunitas pengembang dan pengguna. Nilai tinggi ini nunjukin IINA emang jadi favorit. Dukungan format top, performa mantap, dan jadi bagian ekosistem Mac. So, ngapain ragu? Cobain sendiri dan rasain pengalaman nonton tanpa kompromi! 🌟\r\n\r\n[Download IINA](https://github.com/iina/iina/releases/)	undefined	uploads/2024/01/iina.webp	13	6	1	100	100	1	100	iina-modern-video-player-macos	2024-01-01 17:57:00+00
214	2024-01-03 07:23:35.333085+00	2024-01-03 07:23:35.333108+00	Xnapper Keunggulan Screenshoots Dalam Satu Klik  📸	Dapatkan screenshoot layar yang sempurna dengan Xnapper! 🚀	Menawarkan fitur-fitur canggih yang membuatnya menjadi pilihan utama.	Menangkap momen di layar menjadi lebih mudah dan indah dengan Xnapper. Aplikasi ini tidak hanya memudahkan pembuatan tangkapan layar, tetapi juga menawarkan fitur-fitur canggih yang membuatnya menjadi pilihan utama. Mari kita lihat mengapa Xnapper begitu penting dan bagaimana kita bisa memanfaatkannya.\r\n\r\n\r\n## Fitur Utama Xnapper\r\nTerkadang, membuat tangkapan layar yang sempurna bisa merepotkan. Tapi dengan fungsi utama Xnapper, segalanya menjadi lebih mudah. Bagaimana kita bisa memanfaatkannya?\r\n\r\n![xnapped](https://i.imgur.com/VuaqMRr.gif)\r\n\r\n### 1. Automatic balance screenshot\r\nDengan sekali klik, Xnapper menghasilkan tangkapan layar yang seimbang secara otomatis. Tanpa usaha ekstra, gambar layar Anda akan selalu terlihat profesional.\r\n\r\n### 2. Automatic background color\r\nFokuslah pada konten Anda, biarkan Xnapper mengurus sisanya. Dengan fitur latar belakang otomatis, tangkapan layar Anda akan tetap terlihat rapi dan terorganisir.\r\n\r\n### 3. Automatic redact sensitive information\r\nJangan khawatir tentang informasi sensitif seperti email, kartu kredit, atau alamat IP. Xnapper memudahkan blur otomatis dengan sekali klik.\r\n\r\n### 4. Select and copy text easily\r\n\r\nDengan mesin visi macOS bawaan, Xnapper memungkinkan Anda untuk dengan mudah memilih dan menyalin teks dari tangkapan layar.\r\n\r\n## Key Function in Xnapper Automatic balance screenshot - Apa Kode Xnapper dan Mengapa Ini Penting?\r\n\r\nXnapper menghadirkan kelebihan baru dengan kode khususnya. Mari lihat contohnya dan mengapa ini begitu penting bagi kita.\r\n\r\n\r\n## Fitur Unggulan Lainnya\r\n\r\nTentu, Xnapper tidak hanya menawarkan fungsi utama. Beberapa fitur unggulan lainnya termasuk:\r\n\r\n-   Custom global shortcut 🎯\r\n-   Custom background gradient/image 🌈\r\n-   Window capture (press Space) 🪟\r\n-   Arrows, shapes, text, blur 🖋️\r\n-   Screenshot history 📜\r\n-   Open from file & clipboard 📋\r\n-   Social media sizes & ratios 📱\r\n-   Presets, customized settings ⚙️\r\n-   Compress output image 📏\r\n-   Fast, on-device text recognition 🚀\r\n-   Beautiful & fast native macOS app 💻\r\n\r\n## Pertanyaan Umum (FAQs)\r\n\r\n1.  **Apakah Xnapper mendukung semua ukuran media sosial?**\r\n    \r\n    -   Ya, Xnapper mendukung berbagai ukuran dan rasio media sosial untuk memastikan tangkapan layar Anda sesuai dengan standar platform.\r\n2.  **Apakah Xnapper dapat mengenali teks dengan cepat?**\r\n    \r\n    -   Tentu, Xnapper dilengkapi dengan teknologi pengenalan teks yang cepat dan efisien.\r\n3.  **Apakah Xnapper tersedia untuk sistem operasi selain macOS?**\r\n    \r\n    -   Saat ini, Xnapper hanya tersedia untuk macOS.\r\n4.  **Apakah saya bisa mengakses riwayat tangkapan layar saya?**\r\n    \r\n    -   Ya, Xnapper menyediakan fitur riwayat tangkapan layar untuk memudahkan pengelolaan.\r\n5.  **Adakah cara untuk mengompres ukuran gambar keluaran?**\r\n    \r\n    -   Ya, Xnapper memungkinkan kompresi gambar keluaran untuk menghemat ruang penyimpanan.\r\n\r\n\r\n\r\nXnapper adalah alat yang sempurna untuk membuat screenshot yang menarik secara instan. Dengan fitur-fitur canggih, aplikasi ini memudahkan proses pengambilan gambar layar. Jadi, [download Xnapper sekarang](https://xnapper.com/) dan bawa tangkapan layar Anda ke tingkat berikutnya! 🌟	undefined	uploads/2024/01/xnapper.webp	6	6	1	100	100	100	100	xnapper-keunggulan-screenshoots-dalam-satu-klik	2024-01-02 17:23:00+00
217	2024-01-06 08:54:55.226827+00	2024-01-06 08:54:55.22685+00	Menggebrak Produktivitas dengan Typing Mind: Stabil, Cepat, dan Cocok Buat Kamu! 🚀	Memudahkan pengguna untuk menyimpan dan mengakses pertanyaan.	Meningkatkan efisiensi dan produktivitas dalam aktivitas sehari-hari.	Typing Mind adalah suatu platform canggih yang memanfaatkan kecerdasan buatan untuk meningkatkan produktivitas, terutama dalam hal mengetik. Dengan fitur-fitur unggulan, seperti fast response, chat search, integrations, prompt library, dan lainnya, Typing Mind memberikan pengalaman yang luar biasa dalam menjawab pertanyaan, memberikan bantuan, dan melakukan tugas-tugas tertentu.\r\n\r\nSalah satu fitur menariknya adalah kemampuan untuk diintegrasikan dengan berbagai aplikasi lain, seperti Google Search, Codepen, dan lainnya. Dengan menggunakan API Key sendiri, Typing Mind bisa dijalankan secara lokal pada browser, di macOS App, dan bahkan tersedia opsi untuk self-host, memberikan fleksibilitas yang tinggi kepada pengguna.\r\n\r\nFitur prompt library-nya memudahkan pengguna untuk menyimpan dan mengakses pertanyaan atau perintah tertentu, sementara fast response memastikan bahwa jawaban diberikan dengan cepat. Selain itu, kemampuan untuk melakukan pencarian dalam percakapan juga membuat pengguna dapat dengan mudah menemukan informasi yang diperlukan.\r\n\r\n### **Pemrosesan Prompt Alami yang Keren!**\r\nTyping Mind ini memang luar biasa dalam memahami konteks pembicaraan. Jadi, ngobrol jadi rasanya tidak kaku. Jawabannya tidak hanya akurat, tapi juga terasa sangat personal. \r\n\r\n### **Interface yang Ramah Pengguna dan Desain yang Intuitif! 🎨**\r\nDari mulai intuitif dan navigasi mudah dan desain yang bersih serta\r\nTyping Mind bikin kita senyum-senyum sendiri, gampang sekali dgunakan, iinformasi yang  disajikan rapi dan jelas. Hemat waktu, hemat tenaga!\r\n\r\nTyping Mind tidak hanya sebuah alat untuk meningkatkan kecepatan mengetik, tetapi juga menjadi asisten pintar yang dapat membantu dalam berbagai tugas dan memberikan respons yang cepat dan akurat. Dengan segala fitur canggihnya, Typing Mind menjadi pilihan yang tepat untuk mereka yang ingin meningkatkan efisiensi dan produktivitas dalam aktivitas sehari-hari.\r\n\r\nMungkin kamu bertanya-tanya, "Apa yang membuat Typing Mind begitu istimewa?" Nah, ayo kita selidiki lebih dalam dengan mengintegrasikan dan mencoba fitur-fiturnya langsung di sini: [Typing Mind](https://www.typingmind.com/).	undefined	uploads/2024/01/typingmind.webp	4	4	1	100	100	100	100	menggebrak-produktivitas-dengan-typing-mind-stabil-cepat-dan-cocok-buat-kamu	2024-01-05 18:54:00+00
218	2024-01-08 09:57:37.104837+00	2024-01-08 09:57:37.10486+00	Raycast: Alternatif Alfred, Gratis dan Penuh Fitur! Supercharged Productivity 🚀	Aplikasi Mac gratis yang membawa konsep ini ke tingkat berikutnya.	Ini bukan sekadar launcher aplikasi.	Setiap kali kita bisa menyelesaikan sesuatu dengan lebih cepat menggunakan keyboard daripada mouse, itu adalah kemenangan kecil. Raycast adalah aplikasi Mac gratis yang membawa konsep ini ke tingkat berikutnya. Ini bukan sekadar peluncur aplikasi; ini adalah alat yang mengubah cara kita berinteraksi dengan Mac, memberikan kecepatan dan fungsionalitas tanpa batas.\r\n\r\n## Bebarapa alasan mengapa raycast menarik:\r\n### 1.  Store Raycast: Eksplorasi Dunia Ekstensi! 🌐\r\nTempat dimana para pengembang komunitas menerbitkan Ekstensi menggunakan API. Temukan ekstensi untuk alat-alat yang digunakan sehari-hari. Semua ini dapat diakses secara instan, membantu menyelesaikan tugas lebih cepat.\r\n\r\n![Raycast-Store](https://i.imgur.com/kT2dPQP.jpg)\r\n\r\n### 2. Ringan dan Cepat: Tanpa Gangguan! ⚡\r\nDidesain agar mulus dan instan, Raycast memungkinkanmu untuk melihat ekstensi dan menginstalnya dalam hitungan milidetik. \r\n\r\n### 3.  Koleksi yang Terus Berkembang: Lebih dari Sekadar Launcher! 🚀\r\nKendalikan Spotify atau Apple Music, cari melalui Figma, Notion, dan Xcode, periksa kecepatan internet, atau cuaca tanpa perlu membuka browser. Raycast memang lebih dari sekadar launcher.\r\n\r\n### 4. Ekstensi Raycast: Semua yang Kamu Inginkan dalam Satu Tempat! 🧰\r\nSelain ekstensi inti Raycast, user bisa menginstal ekstensi dari para pengembang komunitas. \r\n\r\n### 5. Fitur dan Extensi Menarik\r\n- **Bundling Clipboard History📋**\r\nDapat dengan mudah mengakses clipboard history dan menemukan sesuatu yang mungkin telah terlupakan.\r\n-  **Pemindahan dan Pengaturan Jendela yang Mudah! 🖼️**\r\nRaycast tidak hanya meluncurkan aplikasi, tetapi juga memungkinkan pengguna untuk memindahkan dan mengatur ukuran window aplikasi dengan cepat. Ini memberikan kontrol lebih besar terhadap tata letak desktop Anda.\r\n![Raycast-Feature](https://i.imgur.com/Y8uBTvr.jpg)\r\n\r\n- **Penggunaan Keyboard Shorcut Universal ⌨️**\r\nSalah satu fitur favorit dari Raycast adalah kemampuan untuk membuat keyboard shortcut universal untuk hampir semua tindakan. Ini memberikan kontrol lebih besar dan mempercepat akses ke berbagai fungsi.\r\n\r\nRaycast menawarkan pengalaman tanpa batas dan tentu saja gratis, memberikan pengguna kemampuan untuk menyesuaikan, mengatur, dan meningkatkan cara mereka berinteraksi dengan Mac. Dengan fitur-fitur canggih seperti Cloud Sync, ChatGPT, dan tema kustom(versi pro), Raycast membuka pintu ke produktivitas yang lebih tinggi.	undefined	uploads/2024/01/raycast_web.webp	6	6	1	100	100	100	3	raycast-alternatif-alfred-gratis-dan-penuh-fitur-supercharged-productivity	2024-01-07 19:56:00+00
219	2024-01-09 08:33:26.969111+00	2024-01-09 08:34:27.341212+00	Arc:  Browser Diantara Kesenangan, Ketenangan dan Keamanan 🌐🔒	Kesenangan Navigasi Web dalam Satu Jendela, Hemat Waktu dan Aman!	Fitur Kustomisasi, Privasi Unggul, dan Kinerja Optimal! 🚀🔒	Arc Browser, sebuah penjelajah web yang tidak hanya memenuhi kebutuhan user, tetapi juga memprediksi mereka. Dengan tampilan bersih dan tenang, Arc membentuk dirinya sesuai dengan cara user menggunakan internet.\r\n\r\n### **Kenapa Arc Browser Bisa Menggantikan Browser Pada Umumnya? 💡**\r\n\r\nMungkin Anda bertanya-tanya, mengapa Arc Browser bisa menjadi pengganti yang unggul dari browser pada umumnya? Ini karena Arc memberikan lebih dari sekadar penjelajahan web. Arc memberikan tempat bagi berbagai sisi kenyamanan. Dengan mudah mengorganisir segala sesuatu yang  dilakukan online — pekerjaan, belajar, atau hobi — semua dalam satu jendela dengan Spaces dan Profiles.\r\n\r\n### **Daya Tarik Browser**\r\n\r\n### **1. Spaces dan Profiles: Organisasi Tanpa Usaha**\r\nSpaces memungkinkan pengguna untuk mengorganisir berkas dan folder mereka ke dalam kelompok terpisah. Ini membantu dalam memisahkan konten berdasarkan jenis, proyek, atau kategori tertentu, hingga setiap Space dapat memiliki pengaturan tampilan dan tema yang berbeda. Ini memungkinkan pengguna untuk mempersonalisasi tampilan Arc Browser sesuai dengan kebutuhan dan preferensi spesifik untuk setiap kelompok berkas.\r\n\r\n### **2. Split View, Themes, dan Lainnya: Browser Sesuai Selera**\r\n\r\nDengan Split View, Themes, dan fitur kustomisasi lainnya, Arc dapat menemukan tata letak yang sempurna sesuai dengan preferensi. Browser ini benar-benar menyesuaikan.\r\n\r\n\r\n### **Beberapa Fitur Penting untuk Pengalaman Navigasi yang Lebih Baik**\r\n\r\n **1. Shortcut Keyboard 🛠️⌨️**\r\nArc Browser menawarkan pintasan keyboard. Ini memberikan penggunaan yang lebih efisien, memungkinkan mengontrol browser dengan cepat dan efektif.\r\n\r\n**2. Mode Split Screen 📱💻**\r\nMode split screen memungkinkan  membuka dua aplikasi sekaligus, memaksimalkan produktivitas dan kemudahan multitasking tanpa kesulitan.\r\n\r\n**3. Sidebar yang Mencakup Semua 🌐**\r\nSidebar Arc memuat segalanya dalam genggaman. Akses cepat ke bookmark, riwayat, dan fitur lainnya dengan sentuhan ringan.\r\n\r\n**4. Little Arc: Penyederhanaan Tampilan**\r\nLittle Arc adalah fitur penyederhanaan tampilan yang memudahkan fokus pada konten utama. Bersih, minimalis, dan efisien.\r\n\r\n**5. Archive Tab: Simpan dan Atur Tab**\r\nArchive Tab memungkinkan menyimpan tab untuk dibuka kembali nanti. Solusi terbaik untuk tetap teratur tanpa harus menutup tab penting.\r\n**6. Notes: Catatan yang Terintegrasi**\r\nBuat catatan langsung dari browser tanpa perlu aplikasi tambahan. Mengatur ide dan informasi dengan mudah.\r\n\r\n **7. Profiles dan Spaces untuk Membuat Area Khusus 🌈**\r\nProfiles dan Spaces memberikan kemampuan untuk membuat area khusus. Pisahkan kehidupan profesional dan pribadi dengan mudah.\r\n\r\n**8. Boost Gallery: Pengelolaan Gambar yang Efisien**\r\nBoost Gallery mempermudah manajemen gambar. Lihat, atur, dan bagikan foto-foto  dengan lebih efisien.\r\n\r\nArc Browser membawa pengalaman penjelajahan web ke tingkat berikutnya dengan kombinasi unik antara kepraktisan dan keamanan. Dengan antarmuka yang dapat disesuaikan, fitur kaya, dan dukungan pengguna yang positif, Arc Browser bisa menjadi pilihan yang fantastis untuk pengguna yang mencari lebih dari sekadar browser biasa. [Download](https://arc.net) sekarang dan jelajahi internet 🚀	undefined	uploads/2024/01/arc_poster.png	6	6	1	100	100	100	100	arc-browser-diantara-kesenangan-ketenagan-dan-keamanan	2024-01-08 18:34:00+00
220	2024-01-27 08:33:34.355312+00	2024-01-27 08:33:34.355336+00	Party Animals 🎉🐶🐱	Battle Hewan Tanpa Batas!	Kekacauan Bersama Hewan Lucu	🎉🐾 Rasakan sensasi pertarungan kocak antara anak anjing, anak kucing, dan hewan-hewan lucu lainnya. Apakah kamu siap untuk seru-seruan dengan teman-temanmu? Unduh sekarang secara gratis hanya di Steam! 🕹️👉 [Klaim di sini](https://store.steampowered.com/app/1260320/Party_Animals/) untuk mendapatkan secara gratis🚀.	undefined	uploads/2024/01/party_animals.webp	56	1	13	1	100	3	1	party-animals	2024-01-30 18:33:00+00
\.


--
-- Data for Name: rest_framework_api_key_apikey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rest_framework_api_key_apikey (id, created, name, revoked, expiry_date, hashed_key, prefix) FROM stdin;
vDOEkPdG.pbkdf2_sha256$260000$R5ZPR9fj24HkbZTJMcClVb$podyFnfSwDxFrcfvQLg+l/hcLhCXFZPNOT8T+F/2NvY=	2023-11-28 07:42:53.573005+00	aws	f	\N	pbkdf2_sha256$260000$R5ZPR9fj24HkbZTJMcClVb$podyFnfSwDxFrcfvQLg+l/hcLhCXFZPNOT8T+F/2NvY=	vDOEkPdG
\.


--
-- Data for Name: reviews_review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews_review (id, created, updated, review, accuracy, communication, cleanliness, location, check_in, value, room_id, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key, provider_id, settings) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: tiplists_tiplist_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplist_games (id, tiplist_id, game_id) FROM stdin;
\.


--
-- Data for Name: tiplists_tiplistguide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplistguide (id, created, updated, title, user_id) FROM stdin;
1	2022-03-25 02:13:13.377568+00	2022-03-25 02:13:13.377583+00	My Favourites guides Article	1
\.


--
-- Data for Name: tiplists_tiplistguide_guides; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplistguide_guides (id, tiplistguide_id, guide_id) FROM stdin;
2	1	11
\.


--
-- Data for Name: tiplists_tiplistnew_news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplistnew_news (id, tiplistnew_id, new_id) FROM stdin;
\.


--
-- Data for Name: tiplists_tiplisttutorial_tips; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplisttutorial_tips  FROM stdin;
\.


--
-- Data for Name: tiplists_tiplisttutorial_tutorials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplisttutorial_tutorials (tutorial_id, tiplisttutorial_id, id) FROM stdin;
\.


--
-- Data for Name: tips_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tips_photo (id, created, updated, caption, file, tip_id) FROM stdin;
11	2022-03-16 08:37:55.425354+00	2022-03-16 08:37:55.425368+00	okla	tip_photos/poshtibancom_1Lw6vcS.png	1
12	2022-03-16 12:04:37.48273+00	2022-03-16 12:04:37.482745+00	naren	tip_photos/colloid_E6osZMo.png	2
13	2022-03-16 12:05:14.488742+00	2022-03-16 12:05:14.488755+00	tut	tip_photos/pexels-roberto-nickson-2559941.jpg	4
14	2022-03-16 12:05:45.494715+00	2022-03-16 12:05:45.494762+00	sun	tip_photos/l-ny-sun_BBThvAQ.jpg	3
\.


--
-- Data for Name: tips_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tips_photo2 (id, created, updated, caption, file, tip_id) FROM stdin;
\.


--
-- Data for Name: tips_tip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tips_tip (id, created, updated, name, caption_title, description, link_tutorial, host_id, tip_type_id, "imageData") FROM stdin;
1	2022-01-10 09:25:06.621629+00	2022-01-10 09:25:06.621678+00	Cara membuat auto	Free	Dengan menggunakan sistem yang lebih baiik	https://www.youtube.com/watch?v=dUoU9I4zD3U&list=OLAK5uy_mpQhSrV2uGWGSvyGFfc44Q0nXnvZHlxcs	1	1	\N
2	2022-01-11 09:29:32.972046+00	2022-01-11 09:29:32.972083+00	Cara membuat autokey	Best	Dengan adanya hotkeydapat memudahkan	wwwkasdd	1	1	\N
3	2022-01-13 03:38:58.526666+00	2022-01-13 03:38:58.526683+00	Tip2	jgjhgj	jhghjgj	tertetrtr	1	1	\N
4	2022-03-16 07:14:36.024772+00	2022-03-16 07:14:36.024787+00	stroll	F1	natulis	www.google.com	1	1	\N
\.


--
-- Data for Name: tips_tiptype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tips_tiptype (id, created, updated, name) FROM stdin;
1	2022-01-10 09:24:00.283272+00	2022-01-10 09:24:00.283298+00	Windows
\.


--
-- Data for Name: tutorials_articletype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorials_articletype (id, created, updated, title) FROM stdin;
1	2022-03-24 03:49:17.00017+00	2022-03-24 03:49:17.000183+00	Windows
\.


--
-- Data for Name: tutorials_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorials_photo (id, created, updated, caption, file, tutorial_id) FROM stdin;
\.


--
-- Data for Name: tutorials_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorials_photo2 (id, created, updated, caption, file, tutorial_id) FROM stdin;
\.


--
-- Data for Name: tutorials_tutorial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorials_tutorial (id, created, updated, title, caption, description, link_tutorial, "imageData", article_type_id, host_id) FROM stdin;
3	2022-03-24 04:52:41.039057+00	2022-03-24 04:52:41.039071+00	jhjhj	jkjkj	hghjghj	hgjghj	tutorial_photos/Screenshot_from_2022-03-21_21-23-32.png	1	1
2	2022-03-24 04:34:46.551685+00	2022-03-26 04:02:11.850513+00	Tutor2	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	with thele	http://localhost:8000/tutorials/create/	tutorial_photos/Screenshot_from_2022-03-21_09-26-58.png	1	1
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, avatar, gender, bio, birthdate, language, currency, superhost, email_verified, email_secret, login_method) FROM stdin;
1	pbkdf2_sha256$260000$BZmTBcngOqovYDgLgpgMFj$JbgAuGuv+YDCbJn4MTttJ9hW5C0JNkxPCMl/kAr2uzc=	2024-01-09 08:32:07.12665+00	t	adminajfpay	Azi JF		ajfpay@gmail.com	t	t	2021-12-16 08:19:23.621459+00				\N	kr	krw	f	f		email
13	pbkdf2_sha256$260000$FKcb9eIOh3RPoZvUOe7wGP$PkSYzmsZr8L5A/0P8RrCkVLP5EXlkNYfObTd8lJkrL8=	2024-01-27 08:32:19.852812+00	f	dwiazelinarizki	Dwi Azelina (Keepwi)			f	t	2023-12-21 08:52:13+00				\N	kr	krw	f	f		email
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
305	13	1
306	13	2
307	13	3
308	13	4
309	13	5
310	13	6
311	13	7
312	13	8
313	13	9
314	13	10
315	13	11
316	13	12
317	13	13
318	13	14
319	13	15
320	13	16
321	13	17
322	13	18
323	13	19
324	13	20
325	13	21
326	13	22
327	13	23
328	13	24
329	13	25
330	13	26
331	13	27
332	13	28
333	13	29
334	13	30
335	13	31
336	13	32
337	13	33
338	13	34
339	13	35
340	13	36
341	13	37
342	13	38
343	13	39
344	13	40
345	13	41
346	13	42
347	13	43
348	13	44
349	13	45
350	13	46
351	13	47
352	13	48
353	13	49
354	13	50
355	13	51
356	13	52
357	13	53
358	13	54
359	13	55
360	13	56
361	13	57
362	13	58
363	13	59
364	13	60
365	13	61
366	13	62
367	13	63
368	13	64
369	13	65
370	13	66
371	13	67
372	13	68
373	13	69
374	13	70
375	13	71
376	13	72
377	13	100
378	13	101
379	13	102
380	13	103
381	13	104
382	13	105
383	13	106
384	13	107
385	13	108
386	13	109
387	13	110
388	13	111
389	13	112
390	13	113
391	13	114
392	13	115
393	13	116
394	13	117
395	13	118
396	13	119
397	13	120
398	13	121
399	13	122
400	13	123
401	13	124
402	13	125
403	13	126
404	13	127
405	13	128
406	13	129
407	13	130
408	13	131
409	13	132
410	13	133
411	13	134
412	13	135
413	13	136
414	13	137
415	13	138
416	13	139
417	13	140
418	13	141
419	13	142
420	13	143
421	13	144
422	13	145
423	13	146
424	13	147
425	13	148
426	13	149
427	13	150
428	13	151
429	13	152
430	13	153
431	13	154
432	13	155
433	13	156
434	13	157
435	13	158
436	13	159
437	13	160
438	13	161
439	13	162
440	13	163
441	13	164
442	13	165
443	13	166
444	13	167
445	13	168
446	13	169
447	13	170
448	13	171
449	13	172
450	13	173
451	13	174
452	13	175
453	13	176
454	13	177
455	13	178
456	13	179
457	13	180
458	13	181
459	13	182
460	13	183
461	13	184
462	13	185
463	13	186
464	13	187
465	13	188
466	13	189
467	13	190
468	13	191
469	13	192
470	13	193
471	13	194
472	13	195
473	13	196
474	13	197
475	13	198
476	13	199
477	13	200
478	13	201
479	13	202
480	13	203
481	13	204
482	13	205
483	13	206
484	13	207
485	13	208
486	13	209
487	13	210
488	13	211
489	13	212
490	13	213
491	13	214
492	13	215
493	13	216
494	13	217
495	13	218
496	13	219
497	13	220
498	13	221
499	13	222
500	13	223
501	13	224
502	13	225
503	13	226
504	13	227
505	13	228
506	13	229
507	13	230
508	13	231
509	13	232
510	13	233
511	13	234
512	13	235
513	13	236
514	13	237
515	13	238
516	13	239
517	13	240
518	13	241
519	13	242
520	13	243
521	13	244
522	13	245
523	13	246
524	13	247
525	13	248
526	13	249
527	13	250
528	13	251
529	13	252
530	13	253
531	13	254
532	13	255
533	13	256
534	13	257
535	13	258
536	13	259
537	13	260
538	13	261
539	13	262
540	13	263
541	13	264
542	13	265
543	13	266
544	13	267
545	13	268
546	13	269
547	13	270
548	13	271
549	13	272
550	13	273
551	13	274
552	13	275
553	13	276
554	13	277
555	13	278
556	13	279
557	13	280
558	13	281
559	13	282
560	13	283
561	13	284
562	13	285
563	13	286
564	13	287
565	13	288
566	13	289
567	13	290
568	13	291
569	13	292
570	13	293
571	13	294
572	13	295
573	13	296
574	13	297
575	13	298
576	13	299
577	13	300
578	13	301
579	13	302
580	13	303
581	13	304
582	13	305
583	13	306
584	13	307
585	13	308
586	13	309
587	13	310
588	13	311
589	13	312
590	13	313
591	13	314
592	13	315
593	13	316
594	13	317
595	13	318
596	13	319
597	13	320
598	13	321
599	13	322
600	13	323
601	13	324
602	13	325
603	13	326
604	13	327
605	13	328
606	13	329
607	13	330
608	13	331
609	13	332
610	13	333
611	13	334
612	13	335
613	13	336
614	13	337
615	13	338
616	13	339
617	13	340
618	13	341
619	13	342
620	13	343
621	13	344
622	13	345
623	13	346
624	13	347
625	13	348
626	13	349
627	13	350
628	13	351
629	13	352
630	13	353
631	13	354
632	13	355
633	13	356
634	13	357
635	13	358
636	13	359
637	13	360
638	13	361
639	13	362
640	13	363
641	13	364
642	13	365
643	13	366
644	13	367
645	13	368
646	13	369
647	13	370
648	13	371
649	13	372
650	13	373
651	13	374
652	13	375
653	13	376
654	13	377
655	13	378
656	13	379
657	13	380
658	13	381
659	13	382
660	13	383
661	13	384
662	13	385
663	13	386
664	13	387
665	13	388
666	13	389
667	13	390
668	13	391
669	13	392
670	13	393
671	13	394
672	13	395
673	13	396
674	13	397
675	13	398
676	13	399
677	13	400
678	13	401
679	13	402
680	13	403
681	13	404
682	13	405
683	13	406
684	13	407
685	13	408
686	13	409
687	13	410
688	13	411
689	13	412
690	13	413
691	13	414
692	13	415
693	13	416
694	13	417
695	13	418
696	13	419
697	13	420
698	13	421
699	13	422
700	13	423
701	13	424
702	13	425
703	13	426
704	13	427
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_announcement_id_seq', 13, true);


--
-- Name: announcements_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 427, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 831, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 114, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 187, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: favorites_favoritenorcharge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favorites_favoritenorcharge_id_seq', 2, true);


--
-- Name: favorites_favoritenorcharge_nocharges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favorites_favoritenorcharge_nocharges_id_seq', 46, true);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_game_id_seq', 16, true);


--
-- Name: games_gametype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_gametype_id_seq', 4, true);


--
-- Name: games_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_photo2_id_seq', 1, false);


--
-- Name: games_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_photo_id_seq', 4, true);


--
-- Name: guides_articletype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guides_articletype_id_seq', 1, true);


--
-- Name: guides_guide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guides_guide_id_seq', 11, true);


--
-- Name: guides_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guides_photo2_id_seq', 1, false);


--
-- Name: guides_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guides_photo_id_seq', 1, false);


--
-- Name: news_articletypenew_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_articletypenew_id_seq', 1, true);


--
-- Name: news_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_new_id_seq', 2, true);


--
-- Name: news_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_photo2_id_seq', 1, false);


--
-- Name: news_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_photo_id_seq', 1, false);


--
-- Name: nocharges_categoryapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_categoryapp_id_seq', 59, true);


--
-- Name: nocharges_categoryfree_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_categoryfree_id_seq', 5, true);


--
-- Name: nocharges_categoryos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_categoryos_id_seq', 7, true);


--
-- Name: nocharges_developer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_developer_id_seq', 8, true);


--
-- Name: nocharges_distribution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_distribution_id_seq', 5, true);


--
-- Name: nocharges_domain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_domain_id_seq', 4, true);


--
-- Name: nocharges_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image_id_seq', 1, false);


--
-- Name: nocharges_nocharge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_nocharge_id_seq', 220, true);


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 1, false);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: tiplists_tiplist_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplist_games_id_seq', 6, true);


--
-- Name: tiplists_tiplistguide_guides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplistguide_guides_id_seq', 2, true);


--
-- Name: tiplists_tiplistguide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplistguide_id_seq', 1, true);


--
-- Name: tiplists_tiplistnew_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplistnew_news_id_seq', 1, true);


--
-- Name: tips_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tips_photo2_id_seq', 1, false);


--
-- Name: tips_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tips_photo_id_seq', 14, true);


--
-- Name: tips_tip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tips_tip_id_seq', 4, true);


--
-- Name: tips_tiptype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tips_tiptype_id_seq', 1, true);


--
-- Name: tutorials_articletype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorials_articletype_id_seq', 1, true);


--
-- Name: tutorials_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorials_photo2_id_seq', 1, false);


--
-- Name: tutorials_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorials_photo_id_seq', 1, false);


--
-- Name: tutorials_tutorial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorials_tutorial_id_seq', 3, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 704, true);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress account_emailaddress_user_id_email_987c8728_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_email_987c8728_uniq UNIQUE (user_id, email);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: announcements_announcement announcements_announcement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_announcement
    ADD CONSTRAINT announcements_announcement_pkey PRIMARY KEY (id);


--
-- Name: announcements_announcement announcements_announcement_slug_0d6b62a8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_announcement
    ADD CONSTRAINT announcements_announcement_slug_0d6b62a8_uniq UNIQUE (slug);


--
-- Name: announcements_image announcements_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image
    ADD CONSTRAINT announcements_image_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: favorites_favoritenorcharge_nocharges favorites_favoritenorcha_favoritenorcharge_id_noc_d8a1d375_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge_nocharges
    ADD CONSTRAINT favorites_favoritenorcha_favoritenorcharge_id_noc_d8a1d375_uniq UNIQUE (favoritenorcharge_id, nocharge_id);


--
-- Name: favorites_favoritenorcharge_nocharges favorites_favoritenorcharge_nocharges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge_nocharges
    ADD CONSTRAINT favorites_favoritenorcharge_nocharges_pkey PRIMARY KEY (id);


--
-- Name: favorites_favoritenorcharge favorites_favoritenorcharge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge
    ADD CONSTRAINT favorites_favoritenorcharge_pkey PRIMARY KEY (id);


--
-- Name: favorites_favoritenorcharge favorites_favoritenorcharge_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge
    ADD CONSTRAINT favorites_favoritenorcharge_user_id_key UNIQUE (user_id);


--
-- Name: games_game games_game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_game
    ADD CONSTRAINT games_game_pkey PRIMARY KEY (id);


--
-- Name: games_gametype games_gametype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_gametype
    ADD CONSTRAINT games_gametype_pkey PRIMARY KEY (id);


--
-- Name: games_photo2 games_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo2
    ADD CONSTRAINT games_photo2_pkey PRIMARY KEY (id);


--
-- Name: games_photo games_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo
    ADD CONSTRAINT games_photo_pkey PRIMARY KEY (id);


--
-- Name: guides_articletype guides_articletype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_articletype
    ADD CONSTRAINT guides_articletype_pkey PRIMARY KEY (id);


--
-- Name: guides_guide guides_guide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_guide
    ADD CONSTRAINT guides_guide_pkey PRIMARY KEY (id);


--
-- Name: guides_photo2 guides_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo2
    ADD CONSTRAINT guides_photo2_pkey PRIMARY KEY (id);


--
-- Name: guides_photo guides_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo
    ADD CONSTRAINT guides_photo_pkey PRIMARY KEY (id);


--
-- Name: news_articletype news_articletypenew_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_articletype
    ADD CONSTRAINT news_articletypenew_pkey PRIMARY KEY (id);


--
-- Name: news_new news_new_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_pkey PRIMARY KEY (id);


--
-- Name: news_photo2 news_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo2
    ADD CONSTRAINT news_photo2_pkey PRIMARY KEY (id);


--
-- Name: news_photo news_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo
    ADD CONSTRAINT news_photo_pkey PRIMARY KEY (id);


--
-- Name: nocharges_categoryapp nocharges_categoryapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryapp
    ADD CONSTRAINT nocharges_categoryapp_pkey PRIMARY KEY (id);


--
-- Name: nocharges_categoryfree nocharges_categoryfree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryfree
    ADD CONSTRAINT nocharges_categoryfree_pkey PRIMARY KEY (id);


--
-- Name: nocharges_categoryos nocharges_categoryos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryos
    ADD CONSTRAINT nocharges_categoryos_pkey PRIMARY KEY (id);


--
-- Name: nocharges_developer nocharges_developer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_developer
    ADD CONSTRAINT nocharges_developer_pkey PRIMARY KEY (id);


--
-- Name: nocharges_distribution nocharges_distribution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_distribution
    ADD CONSTRAINT nocharges_distribution_pkey PRIMARY KEY (id);


--
-- Name: nocharges_domain nocharges_domain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_domain
    ADD CONSTRAINT nocharges_domain_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image nocharges_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image
    ADD CONSTRAINT nocharges_image_pkey PRIMARY KEY (id);


--
-- Name: nocharges_nocharge nocharges_nocharge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_pkey PRIMARY KEY (id);


--
-- Name: nocharges_nocharge nocharges_nocharge_slug_03ba6f12_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_slug_03ba6f12_uniq UNIQUE (slug);


--
-- Name: rest_framework_api_key_apikey rest_framework_api_key_apikey_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rest_framework_api_key_apikey
    ADD CONSTRAINT rest_framework_api_key_apikey_pkey PRIMARY KEY (id);


--
-- Name: rest_framework_api_key_apikey rest_framework_api_key_apikey_prefix_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rest_framework_api_key_apikey
    ADD CONSTRAINT rest_framework_api_key_apikey_prefix_key UNIQUE (prefix);


--
-- Name: reviews_review reviews_review_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews_review
    ADD CONSTRAINT reviews_review_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplist_games tiplists_tiplist_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplist_games
    ADD CONSTRAINT tiplists_tiplist_games_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplist_games tiplists_tiplist_games_tiplist_id_game_id_0e981b9f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplist_games
    ADD CONSTRAINT tiplists_tiplist_games_tiplist_id_game_id_0e981b9f_uniq UNIQUE (tiplist_id, game_id);


--
-- Name: tiplists_tiplistguide_guides tiplists_tiplistguide_gu_tiplistguide_id_guide_id_2b7a4633_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides
    ADD CONSTRAINT tiplists_tiplistguide_gu_tiplistguide_id_guide_id_2b7a4633_uniq UNIQUE (tiplistguide_id, guide_id);


--
-- Name: tiplists_tiplistguide_guides tiplists_tiplistguide_guides_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides
    ADD CONSTRAINT tiplists_tiplistguide_guides_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplistguide tiplists_tiplistguide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide
    ADD CONSTRAINT tiplists_tiplistguide_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplistguide tiplists_tiplistguide_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide
    ADD CONSTRAINT tiplists_tiplistguide_user_id_key UNIQUE (user_id);


--
-- Name: tiplists_tiplistnew_news tiplists_tiplistnew_news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistnew_news
    ADD CONSTRAINT tiplists_tiplistnew_news_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplistnew_news tiplists_tiplistnew_news_tiplistnew_id_new_id_68a5fd82_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistnew_news
    ADD CONSTRAINT tiplists_tiplistnew_news_tiplistnew_id_new_id_68a5fd82_uniq UNIQUE (tiplistnew_id, new_id);


--
-- Name: tiplists_tiplisttutorial_tutorials tiplists_tiplisttutorial_tutorials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplisttutorial_tutorials
    ADD CONSTRAINT tiplists_tiplisttutorial_tutorials_pkey PRIMARY KEY (id);


--
-- Name: tips_photo2 tips_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo2
    ADD CONSTRAINT tips_photo2_pkey PRIMARY KEY (id);


--
-- Name: tips_photo tips_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo
    ADD CONSTRAINT tips_photo_pkey PRIMARY KEY (id);


--
-- Name: tips_tip tips_tip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tip
    ADD CONSTRAINT tips_tip_pkey PRIMARY KEY (id);


--
-- Name: tips_tiptype tips_tiptype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tiptype
    ADD CONSTRAINT tips_tiptype_pkey PRIMARY KEY (id);


--
-- Name: tutorials_articletype tutorials_articletype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_articletype
    ADD CONSTRAINT tutorials_articletype_pkey PRIMARY KEY (id);


--
-- Name: tutorials_photo2 tutorials_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo2
    ADD CONSTRAINT tutorials_photo2_pkey PRIMARY KEY (id);


--
-- Name: tutorials_photo tutorials_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo
    ADD CONSTRAINT tutorials_photo_pkey PRIMARY KEY (id);


--
-- Name: tutorials_tutorial tutorials_tutorial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_tutorial
    ADD CONSTRAINT tutorials_tutorial_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: account_emailaddress_upper; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_upper ON public.account_emailaddress USING btree (upper((email)::text));


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: announcements_announcement_host_id_067dec6b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_announcement_host_id_067dec6b ON public.announcements_announcement USING btree (host_id);


--
-- Name: announcements_announcement_slug_0d6b62a8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_announcement_slug_0d6b62a8_like ON public.announcements_announcement USING btree (slug varchar_pattern_ops);


--
-- Name: announcements_image_announcement_id_01ce9f86; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image_announcement_id_01ce9f86 ON public.announcements_image USING btree (announcement_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: favorites_favoritenorcharg_favoritenorcharge_id_96b08ce7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX favorites_favoritenorcharg_favoritenorcharge_id_96b08ce7 ON public.favorites_favoritenorcharge_nocharges USING btree (favoritenorcharge_id);


--
-- Name: favorites_favoritenorcharge_nocharges_nocharge_id_729647d1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX favorites_favoritenorcharge_nocharges_nocharge_id_729647d1 ON public.favorites_favoritenorcharge_nocharges USING btree (nocharge_id);


--
-- Name: games_game_game_type_id_2fefd73e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX games_game_game_type_id_2fefd73e ON public.games_game USING btree (game_type_id);


--
-- Name: games_game_host_id_651375fe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX games_game_host_id_651375fe ON public.games_game USING btree (host_id);


--
-- Name: games_photo2_game_id_12f7b859; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX games_photo2_game_id_12f7b859 ON public.games_photo2 USING btree (game_id);


--
-- Name: games_photo_game_id_4af7db4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX games_photo_game_id_4af7db4b ON public.games_photo USING btree (game_id);


--
-- Name: guides_guide_article_type_id_dd49ac9d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX guides_guide_article_type_id_dd49ac9d ON public.guides_guide USING btree (article_type_id);


--
-- Name: guides_guide_host_id_ed32d382; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX guides_guide_host_id_ed32d382 ON public.guides_guide USING btree (host_id);


--
-- Name: guides_photo2_guide_id_d7a8e342; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX guides_photo2_guide_id_d7a8e342 ON public.guides_photo2 USING btree (guide_id);


--
-- Name: guides_photo_guide_id_58b40b04; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX guides_photo_guide_id_58b40b04 ON public.guides_photo USING btree (guide_id);


--
-- Name: news_new_article_type_new_id_c257de28; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_new_article_type_new_id_c257de28 ON public.news_new USING btree (article_type_id);


--
-- Name: news_new_host_id_a041e633; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_new_host_id_a041e633 ON public.news_new USING btree (host_id);


--
-- Name: news_photo2_new_id_18c5a141; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_photo2_new_id_18c5a141 ON public.news_photo2 USING btree (new_id);


--
-- Name: news_photo_new_id_24f488cb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_photo_new_id_24f488cb ON public.news_photo USING btree (new_id);


--
-- Name: nocharges_image_nocharge_id_19ea669b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image_nocharge_id_19ea669b ON public.nocharges_image USING btree (nocharge_id);


--
-- Name: nocharges_nocharge_category_app_id_11a85cf1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_category_app_id_11a85cf1 ON public.nocharges_nocharge USING btree (category_app_id);


--
-- Name: nocharges_nocharge_category_free_id_dc039ebe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_category_free_id_dc039ebe ON public.nocharges_nocharge USING btree (category_free_id);


--
-- Name: nocharges_nocharge_category_os_id_8f34f357; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_category_os_id_8f34f357 ON public.nocharges_nocharge USING btree (category_os_id);


--
-- Name: nocharges_nocharge_developer_id_ed7b9e85; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_developer_id_ed7b9e85 ON public.nocharges_nocharge USING btree (developer_id);


--
-- Name: nocharges_nocharge_distribution_id_44c4640b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_distribution_id_44c4640b ON public.nocharges_nocharge USING btree (distribution_id);


--
-- Name: nocharges_nocharge_domain_id_bc95828b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_domain_id_bc95828b ON public.nocharges_nocharge USING btree (domain_id);


--
-- Name: nocharges_nocharge_host_id_bd62a5db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_host_id_bd62a5db ON public.nocharges_nocharge USING btree (host_id);


--
-- Name: nocharges_nocharge_slug_03ba6f12_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_slug_03ba6f12_like ON public.nocharges_nocharge USING btree (slug varchar_pattern_ops);


--
-- Name: rest_framework_api_key_apikey_created_c61872d9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rest_framework_api_key_apikey_created_c61872d9 ON public.rest_framework_api_key_apikey USING btree (created);


--
-- Name: rest_framework_api_key_apikey_id_6e07e68e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rest_framework_api_key_apikey_id_6e07e68e_like ON public.rest_framework_api_key_apikey USING btree (id varchar_pattern_ops);


--
-- Name: rest_framework_api_key_apikey_prefix_4e0db5f8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rest_framework_api_key_apikey_prefix_4e0db5f8_like ON public.rest_framework_api_key_apikey USING btree (prefix varchar_pattern_ops);


--
-- Name: reviews_review_room_id_88f19e2a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reviews_review_room_id_88f19e2a ON public.reviews_review USING btree (room_id);


--
-- Name: reviews_review_user_id_875caff2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reviews_review_user_id_875caff2 ON public.reviews_review USING btree (user_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: tiplists_tiplist_games_game_id_17b6a93b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplist_games_game_id_17b6a93b ON public.tiplists_tiplist_games USING btree (game_id);


--
-- Name: tiplists_tiplist_games_tiplist_id_e226dd86; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplist_games_tiplist_id_e226dd86 ON public.tiplists_tiplist_games USING btree (tiplist_id);


--
-- Name: tiplists_tiplistguide_guides_guide_id_6cd0fc0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistguide_guides_guide_id_6cd0fc0e ON public.tiplists_tiplistguide_guides USING btree (guide_id);


--
-- Name: tiplists_tiplistguide_guides_tiplistguide_id_8b76674c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistguide_guides_tiplistguide_id_8b76674c ON public.tiplists_tiplistguide_guides USING btree (tiplistguide_id);


--
-- Name: tiplists_tiplistnew_news_new_id_ce407b99; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistnew_news_new_id_ce407b99 ON public.tiplists_tiplistnew_news USING btree (new_id);


--
-- Name: tiplists_tiplistnew_news_tiplistnew_id_14860870; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistnew_news_tiplistnew_id_14860870 ON public.tiplists_tiplistnew_news USING btree (tiplistnew_id);


--
-- Name: tips_photo2_tip_id_2fa2a39b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tips_photo2_tip_id_2fa2a39b ON public.tips_photo2 USING btree (tip_id);


--
-- Name: tips_photo_Tip_id_c7536887; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "tips_photo_Tip_id_c7536887" ON public.tips_photo USING btree (tip_id);


--
-- Name: tips_tip_host_id_a78aa2e6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tips_tip_host_id_a78aa2e6 ON public.tips_tip USING btree (host_id);


--
-- Name: tips_tip_tip_type_id_cc5c65bd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tips_tip_tip_type_id_cc5c65bd ON public.tips_tip USING btree (tip_type_id);


--
-- Name: tutorials_photo2_tutorial_id_e43bd209; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tutorials_photo2_tutorial_id_e43bd209 ON public.tutorials_photo2 USING btree (tutorial_id);


--
-- Name: tutorials_photo_tutorial_id_6154737e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tutorials_photo_tutorial_id_6154737e ON public.tutorials_photo USING btree (tutorial_id);


--
-- Name: tutorials_tutorial_article_type_id_5437c3c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tutorials_tutorial_article_type_id_5437c3c1 ON public.tutorials_tutorial USING btree (article_type_id);


--
-- Name: tutorials_tutorial_host_id_70d8b06d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tutorials_tutorial_host_id_70d8b06d ON public.tutorials_tutorial USING btree (host_id);


--
-- Name: unique_verified_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX unique_verified_email ON public.account_emailaddress USING btree (email) WHERE verified;


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_announcement announcements_announcement_host_id_067dec6b_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_announcement
    ADD CONSTRAINT announcements_announcement_host_id_067dec6b_fk FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image announcements_image_announcement_id_01ce9f86_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image
    ADD CONSTRAINT announcements_image_announcement_id_01ce9f86_fk FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: favorites_favoritenorcharge favorites_favoritenorcharge_user_id_38faffe5_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge
    ADD CONSTRAINT favorites_favoritenorcharge_user_id_38faffe5_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: games_game games_game_game_type_id_2fefd73e_fk_games_gametype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_game
    ADD CONSTRAINT games_game_game_type_id_2fefd73e_fk_games_gametype_id FOREIGN KEY (game_type_id) REFERENCES public.games_gametype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: games_game games_game_host_id_651375fe_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_game
    ADD CONSTRAINT games_game_host_id_651375fe_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: games_photo2 games_photo2_game_id_12f7b859_fk_games_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo2
    ADD CONSTRAINT games_photo2_game_id_12f7b859_fk_games_game_id FOREIGN KEY (game_id) REFERENCES public.games_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: games_photo games_photo_game_id_4af7db4b_fk_games_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo
    ADD CONSTRAINT games_photo_game_id_4af7db4b_fk_games_game_id FOREIGN KEY (game_id) REFERENCES public.games_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guides_guide guides_guide_article_type_id_dd49ac9d_fk_guides_articletype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_guide
    ADD CONSTRAINT guides_guide_article_type_id_dd49ac9d_fk_guides_articletype_id FOREIGN KEY (article_type_id) REFERENCES public.guides_articletype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guides_guide guides_guide_host_id_ed32d382_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_guide
    ADD CONSTRAINT guides_guide_host_id_ed32d382_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guides_photo2 guides_photo2_guide_id_d7a8e342_fk_guides_guide_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo2
    ADD CONSTRAINT guides_photo2_guide_id_d7a8e342_fk_guides_guide_id FOREIGN KEY (guide_id) REFERENCES public.guides_guide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guides_photo guides_photo_guide_id_58b40b04_fk_guides_guide_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo
    ADD CONSTRAINT guides_photo_guide_id_58b40b04_fk_guides_guide_id FOREIGN KEY (guide_id) REFERENCES public.guides_guide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_new news_new_article_type_id_1504c689_fk_news_articletype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_article_type_id_1504c689_fk_news_articletype_id FOREIGN KEY (article_type_id) REFERENCES public.news_articletype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_new news_new_host_id_a041e633_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_host_id_a041e633_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_photo2 news_photo2_new_id_18c5a141_fk_news_new_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo2
    ADD CONSTRAINT news_photo2_new_id_18c5a141_fk_news_new_id FOREIGN KEY (new_id) REFERENCES public.news_new(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_photo news_photo_new_id_24f488cb_fk_news_new_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo
    ADD CONSTRAINT news_photo_new_id_24f488cb_fk_news_new_id FOREIGN KEY (new_id) REFERENCES public.news_new(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image nocharges_image_nocharge_id_19ea669b_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image
    ADD CONSTRAINT nocharges_image_nocharge_id_19ea669b_fk FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_category_app_id_11a85cf1_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_category_app_id_11a85cf1_fk FOREIGN KEY (category_app_id) REFERENCES public.nocharges_categoryapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_category_free_id_dc039ebe_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_category_free_id_dc039ebe_fk FOREIGN KEY (category_free_id) REFERENCES public.nocharges_categoryfree(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_category_os_id_8f34f357_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_category_os_id_8f34f357_fk_nocharges FOREIGN KEY (category_os_id) REFERENCES public.nocharges_categoryos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_developer_id_ed7b9e85_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_developer_id_ed7b9e85_fk_nocharges FOREIGN KEY (developer_id) REFERENCES public.nocharges_developer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_distribution_id_44c4640b_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_distribution_id_44c4640b_fk_nocharges FOREIGN KEY (distribution_id) REFERENCES public.nocharges_distribution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_domain_id_bc95828b_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_domain_id_bc95828b_fk FOREIGN KEY (domain_id) REFERENCES public.nocharges_domain(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_host_id_bd62a5db_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_host_id_bd62a5db_fk FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reviews_review reviews_review_user_id_875caff2_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews_review
    ADD CONSTRAINT reviews_review_user_id_875caff2_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplist_games tiplists_tiplist_games_game_id_17b6a93b_fk_games_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplist_games
    ADD CONSTRAINT tiplists_tiplist_games_game_id_17b6a93b_fk_games_game_id FOREIGN KEY (game_id) REFERENCES public.games_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistguide_guides tiplists_tiplistguid_guide_id_6cd0fc0e_fk_guides_gu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides
    ADD CONSTRAINT tiplists_tiplistguid_guide_id_6cd0fc0e_fk_guides_gu FOREIGN KEY (guide_id) REFERENCES public.guides_guide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistguide_guides tiplists_tiplistguid_tiplistguide_id_8b76674c_fk_tiplists_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides
    ADD CONSTRAINT tiplists_tiplistguid_tiplistguide_id_8b76674c_fk_tiplists_ FOREIGN KEY (tiplistguide_id) REFERENCES public.tiplists_tiplistguide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistguide tiplists_tiplistguide_user_id_2d369ff8_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide
    ADD CONSTRAINT tiplists_tiplistguide_user_id_2d369ff8_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistnew_news tiplists_tiplistnew_news_new_id_ce407b99_fk_news_new_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistnew_news
    ADD CONSTRAINT tiplists_tiplistnew_news_new_id_ce407b99_fk_news_new_id FOREIGN KEY (new_id) REFERENCES public.news_new(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tips_photo2 tips_photo2_tip_id_2fa2a39b_fk_tips_tip_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo2
    ADD CONSTRAINT tips_photo2_tip_id_2fa2a39b_fk_tips_tip_id FOREIGN KEY (tip_id) REFERENCES public.tips_tip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tips_photo tips_photo_tip_id_a055919e_fk_tips_tip_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo
    ADD CONSTRAINT tips_photo_tip_id_a055919e_fk_tips_tip_id FOREIGN KEY (tip_id) REFERENCES public.tips_tip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tips_tip tips_tip_host_id_a78aa2e6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tip
    ADD CONSTRAINT tips_tip_host_id_a78aa2e6_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tips_tip tips_tip_tip_type_id_cc5c65bd_fk_tips_tiptype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tip
    ADD CONSTRAINT tips_tip_tip_type_id_cc5c65bd_fk_tips_tiptype_id FOREIGN KEY (tip_type_id) REFERENCES public.tips_tiptype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorials_photo2 tutorials_photo2_tutorial_id_e43bd209_fk_tutorials_tutorial_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo2
    ADD CONSTRAINT tutorials_photo2_tutorial_id_e43bd209_fk_tutorials_tutorial_id FOREIGN KEY (tutorial_id) REFERENCES public.tutorials_tutorial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorials_photo tutorials_photo_tutorial_id_6154737e_fk_tutorials_tutorial_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo
    ADD CONSTRAINT tutorials_photo_tutorial_id_6154737e_fk_tutorials_tutorial_id FOREIGN KEY (tutorial_id) REFERENCES public.tutorials_tutorial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorials_tutorial tutorials_tutorial_article_type_id_5437c3c1_fk_tutorials; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_tutorial
    ADD CONSTRAINT tutorials_tutorial_article_type_id_5437c3c1_fk_tutorials FOREIGN KEY (article_type_id) REFERENCES public.tutorials_articletype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorials_tutorial tutorials_tutorial_host_id_70d8b06d_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_tutorial
    ADD CONSTRAINT tutorials_tutorial_host_id_70d8b06d_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

