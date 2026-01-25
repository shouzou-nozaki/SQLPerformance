-- 3. 100万件投入（1%が誕生日NULL）
INSERT INTO employees_notnull (employee_id, date_of_birth, name)
SELECT
    i,
    CASE WHEN i % 100 = 0 THEN NULL 
         ELSE '1990-01-01'::date + (i % 10000) END,
    md5(i::text)
FROM generate_series(1, 1000000) AS i;