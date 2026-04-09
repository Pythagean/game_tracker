DROP TABLE IF EXISTS public.themes CASCADE;

CREATE TABLE IF NOT EXISTS public.themes
(
    theme_id SERIAL PRIMARY KEY,
        name     VARCHAR(100) NOT NULL
);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.themes ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read themes" ON public.themes;
CREATE POLICY "Authenticated users can read themes"
    ON public.themes FOR SELECT TO authenticated USING (true);
