-- 検証①：OFFSETによるページング（深いページ）
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM employees 
ORDER BY dept_id ASC, salary ASC 
LIMIT 10 OFFSET 90000;

-- 検証②：シーク法によるページング（WHERE句で場所を特定）
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM employees 
WHERE (dept_id, salary) > (90, 5000) -- 前ページの最後の値を指定
ORDER BY dept_id ASC, salary ASC 
LIMIT 10;

