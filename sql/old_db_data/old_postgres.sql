CREATE TABLE IF NOT EXISTS public.developers
(
    developer_id integer NOT NULL DEFAULT nextval('developers_developer_id_seq'::regclass),
    name character varying(250) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT developers_pkey PRIMARY KEY (developer_id)
)

CREATE TABLE IF NOT EXISTS public.games
(
    game_id integer NOT NULL DEFAULT nextval('games_game_id_seq'::regclass),
    title character varying(250) COLLATE pg_catalog."default" NOT NULL,
    platform character varying(250) COLLATE pg_catalog."default" NOT NULL,
    franchise character varying(50) COLLATE pg_catalog."default",
    publisher character varying(100) COLLATE pg_catalog."default",
    release_date date NOT NULL,
    first_played date,
    last_played date,
    metacritic_score integer,
    multiplayer_style character varying(50) COLLATE pg_catalog."default",
    controller_style character varying(50) COLLATE pg_catalog."default",
    store character varying(50) COLLATE pg_catalog."default",
    giantbomb_id integer,
    giantbomb_img_url character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT games_pkey PRIMARY KEY (game_id)
)

CREATE TABLE IF NOT EXISTS public.genres
(
    genre_id integer NOT NULL DEFAULT nextval('genres_genre_id_seq'::regclass),
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT genres_pkey PRIMARY KEY (genre_id)
)

CREATE TABLE IF NOT EXISTS public.players
(
    player_id integer NOT NULL DEFAULT nextval('players_player_id_seq'::regclass),
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT players_pkey PRIMARY KEY (player_id)
)

CREATE TABLE IF NOT EXISTS public.themes
(
    theme_id integer NOT NULL DEFAULT nextval('themes_theme_id_seq'::regclass),
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT themes_pkey PRIMARY KEY (theme_id)
)

CREATE TABLE IF NOT EXISTS public.sessions
(
    session_id integer NOT NULL DEFAULT nextval('sessions_session_id_seq'::regclass),
    game_id integer NOT NULL,
    platform character varying(50) COLLATE pg_catalog."default" NOT NULL,
    start_date date NOT NULL,
    start_time character varying(50) COLLATE pg_catalog."default",
    duration integer NOT NULL,
    location character varying(100) COLLATE pg_catalog."default",
    game_mode character varying(50) COLLATE pg_catalog."default",
    controller_style character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT sessions_pkey PRIMARY KEY (session_id),
    CONSTRAINT sessions_game_id_fkey FOREIGN KEY (game_id)
        REFERENCES public.games (game_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

CREATE TABLE IF NOT EXISTS public.game_developer
(
    game_developer_id integer NOT NULL DEFAULT nextval('game_developer_game_developer_id_seq'::regclass),
    game_id integer NOT NULL,
    developer_id integer NOT NULL,
    CONSTRAINT game_developer_pkey PRIMARY KEY (game_developer_id),
    CONSTRAINT game_developer_developer_id_fkey FOREIGN KEY (developer_id)
        REFERENCES public.developers (developer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT game_developer_game_id_fkey FOREIGN KEY (game_id)
        REFERENCES public.games (game_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

CREATE TABLE IF NOT EXISTS public.game_genre
(
    game_genre_id integer NOT NULL DEFAULT nextval('game_genre_game_genre_id_seq'::regclass),
    game_id integer NOT NULL,
    genre_id integer NOT NULL,
    CONSTRAINT game_genre_pkey PRIMARY KEY (game_genre_id),
    CONSTRAINT game_genre_game_id_fkey FOREIGN KEY (game_id)
        REFERENCES public.games (game_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT game_genre_genre_id_fkey FOREIGN KEY (genre_id)
        REFERENCES public.genres (genre_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

CREATE TABLE IF NOT EXISTS public.game_theme
(
    game_theme_id integer NOT NULL DEFAULT nextval('game_theme_game_theme_id_seq'::regclass),
    game_id integer NOT NULL,
    theme_id integer NOT NULL,
    CONSTRAINT game_theme_pkey PRIMARY KEY (game_theme_id),
    CONSTRAINT game_theme_game_id_fkey FOREIGN KEY (game_id)
        REFERENCES public.games (game_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT game_theme_theme_id_fkey FOREIGN KEY (theme_id)
        REFERENCES public.themes (theme_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

CREATE TABLE IF NOT EXISTS public.session_player
(
    session_player_id integer NOT NULL DEFAULT nextval('session_player_session_player_id_seq'::regclass),
    session_id integer NOT NULL,
    player_id integer NOT NULL,
    CONSTRAINT session_player_pkey PRIMARY KEY (session_player_id),
    CONSTRAINT session_player_player_id_fkey FOREIGN KEY (player_id)
        REFERENCES public.players (player_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT session_player_session_id_fkey FOREIGN KEY (session_id)
        REFERENCES public.sessions (session_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)