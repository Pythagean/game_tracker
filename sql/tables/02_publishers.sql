DROP TABLE IF EXISTS public.publishers CASCADE;

CREATE TABLE IF NOT EXISTS public.publishers
(
    publisher_id SERIAL PRIMARY KEY,
    name         VARCHAR(250) NOT NULL
);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.publishers ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read publishers" ON public.publishers;
CREATE POLICY "Authenticated users can read publishers"
    ON public.publishers FOR SELECT TO authenticated USING (true);
