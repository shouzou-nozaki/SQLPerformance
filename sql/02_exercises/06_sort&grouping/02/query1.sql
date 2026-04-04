-- 検証①：完全逆順
EXPLAIN (ANALYZE, BUFFERS)
SELECT dept_id, salary FROM employees 
WHERE dept_id = 5 
ORDER BY dept_id DESC, salary DESC;

-- 検証②：順序の混在
EXPLAIN (ANALYZE, BUFFERS)
SELECT dept_id, salary FROM employees 
WHERE dept_id >= 5 
ORDER BY dept_id ASC, salary DESC;

-- 検証③：NULLの順序
EXPLAIN (ANALYZE, BUFFERS)
SELECT rating FROM employees 
ORDER BY rating DESC NULLS LAST;