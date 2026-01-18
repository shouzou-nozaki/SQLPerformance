-- 100万件投入 (99万件が 'Y', 1万件が 'N')
INSERT INTO messages (receiver_id, processed, content)
SELECT
    (random() * 10000)::int,
    CASE WHEN i % 100 = 0 THEN 'N' ELSE 'Y' END, -- 100件に1件だけ 'N'
    md5(random()::text)
FROM generate_series(1, 1000000) AS i;