-- 検証① 等価条件(=) + Order by
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM employees 
WHERE dept_id = 5 
ORDER BY salary DESC;

-- 検証② 範囲条件(>) + Order by
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM employees 
WHERE dept_id >= 5 
ORDER BY salary DESC;

-- 検証③ オプティマイザの判断
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM employees ORDER BY salary DESC;