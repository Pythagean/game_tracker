DROP TABLE IF EXISTS public.publishers CASCADE;

CREATE TABLE IF NOT EXISTS public.publishers
(
    publisher_id SERIAL PRIMARY KEY,
    name         VARCHAR(250) NOT NULL
);
