DROP TABLE IF EXISTS public.franchises CASCADE;

CREATE TABLE IF NOT EXISTS public.franchises
(
    franchise_id SERIAL PRIMARY KEY,
    name         VARCHAR(100) NOT NULL
);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.franchises ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read franchises" ON public.franchises;
CREATE POLICY "Authenticated users can read franchises"
    ON public.franchises FOR SELECT TO authenticated USING (true);
