DROP TABLE IF EXISTS public.themes CASCADE;

CREATE TABLE IF NOT EXISTS public.themes
(
    theme_id SERIAL PRIMARY KEY,
    name     VARCHAR(50) NOT NULL
);
