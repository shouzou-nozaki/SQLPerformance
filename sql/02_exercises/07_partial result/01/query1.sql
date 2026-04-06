-- 検証①：成功パターン（インデックス一致 ＋ LIMIT）
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM employees 
ORDER BY dept_id ASC, salary ASC 
LIMIT 10;

-- 検証②：失敗パターン（順序不一致 ＋ LIMIT）
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM employees 
ORDER BY rating ASC 
LIMIT 10;

-- 検証③：ページングの罠（OFFSET）
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM employees 
ORDER BY dept_id ASC, salary ASC 
LIMIT 10 OFFSET 90000;