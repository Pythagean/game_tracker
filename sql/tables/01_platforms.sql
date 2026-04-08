DROP TABLE IF EXISTS public.platforms CASCADE;

CREATE TABLE IF NOT EXISTS public.platforms
(
    platform_id SERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL
);
