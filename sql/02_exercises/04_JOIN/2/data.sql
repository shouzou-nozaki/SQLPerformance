-- 1. 小さいテーブル（Employee）: 1万件
CREATE TABLE employees AS 
SELECT i AS id, 'Employee_' || i AS name, (i % 10) AS dept_id, 'Some dummy long text to bloat the row...' AS note
FROM generate_series(1, 10000) s(i);

-- 2. 大きいテーブル（Sales）: 100万件
CREATE TABLE sales AS 
SELECT i AS id, (i % 10000 + 1) AS employee_id, (random() * 1000)::int AS amount, now() - (random() * interval '1 year') AS sale_date
FROM generate_series(1, 1000000) s(i);

