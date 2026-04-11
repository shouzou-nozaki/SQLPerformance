-- 【検証①】1万件挿入の時間を計測
\timing on
INSERT INTO employees_no_idx 
SELECT i, 'name'||i, (i%10)+1, (random()*100000)::int, (random()*5)::int 
FROM generate_series(1, 10000) AS i;
\timing off


-- 【検証②】インデックスありでの1万件挿入
-- 準備：インデックスが5つあるテーブル
CREATE TABLE employees_many_idx AS SELECT * FROM employees_no_idx WITH NO DATA;
CREATE INDEX idx_1 ON employees_many_idx(id);
CREATE INDEX idx_2 ON employees_many_idx(dept_id);
CREATE INDEX idx_3 ON employees_many_idx(salary);
CREATE INDEX idx_4 ON employees_many_idx(rating);
CREATE INDEX idx_5 ON employees_many_idx(name);

-- 1万件挿入の時間を計測
\timing on
INSERT INTO employees_many_idx 
SELECT i, 'name'||i, (i%10)+1, (random()*100000)::int, (random()*5)::int 
FROM generate_series(1, 10000) AS i;
\timing off

