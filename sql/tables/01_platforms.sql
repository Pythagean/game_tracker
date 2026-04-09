DROP TABLE IF EXISTS public.platforms CASCADE;

CREATE TABLE IF NOT EXISTS public.platforms
(
    platform_id SERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL
);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.platforms ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read platforms" ON public.platforms;
CREATE POLICY "Authenticated users can read platforms"
    ON public.platforms FOR SELECT TO authenticated USING (true);
