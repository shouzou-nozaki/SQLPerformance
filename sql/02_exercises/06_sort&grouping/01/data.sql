CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    dept_id INT,
    salary INT,
    name TEXT
);

-- 10万件のデータ挿入
INSERT INTO employees (dept_id, salary, name)
SELECT 
    (random() * 10)::int,        -- 0〜10の部署ID
    (random() * 1000000)::int,   -- ランダムな給与
    md5(random()::text)
FROM generate_series(1, 100000);

