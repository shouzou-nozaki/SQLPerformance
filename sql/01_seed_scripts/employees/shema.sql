-- 100万件投入 (1%が誕生日NULL)
INSERT INTO employees (subsidiary_id, date_of_birth, name)
SELECT
    (random() * 10)::int + 1,
    CASE WHEN i % 100 = 0 THEN NULL 
         ELSE '1990-01-01'::date + (random() * 10000)::int % 10000 END,
    md5(random()::text)
FROM generate_series(1, 1000000) AS i;