DROP TABLE IF EXISTS public.genres CASCADE;

CREATE TABLE IF NOT EXISTS public.genres
(
    genre_id SERIAL PRIMARY KEY,
        name     VARCHAR(100) NOT NULL
);
-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.genres ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read genres" ON public.genres;
CREATE POLICY "Authenticated users can read genres"
    ON public.genres FOR SELECT TO authenticated USING (true);
