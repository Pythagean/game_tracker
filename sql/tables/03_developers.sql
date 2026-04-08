DROP TABLE IF EXISTS public.developers CASCADE;

CREATE TABLE IF NOT EXISTS public.developers
(
    developer_id SERIAL PRIMARY KEY,
    name         VARCHAR(250) NOT NULL
);
