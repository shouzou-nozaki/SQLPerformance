-- 検証①：インデックスと一致するGROUP BY
EXPLAIN (ANALYZE, BUFFERS)
SELECT dept_id, AVG(salary) 
FROM employees 
GROUP BY dept_id;

-- 検証②：順序が崩れるGROUP BY(範囲条件との組み合わせ)
EXPLAIN (ANALYZE, BUFFERS)
SELECT dept_id, AVG(salary) 
FROM employees 
WHERE dept_id >= 5 
GROUP BY dept_id;

-- 検証③：インデックスを無視したGROUP BY(ハッシュ集約)
EXPLAIN (ANALYZE, BUFFERS)
SELECT rating, COUNT(*) 
FROM employees 
GROUP BY rating;