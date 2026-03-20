EXPLAIN ANALYZE 
SELECT * FROM employees 
WHERE subsidiary_id = 5 
  AND UPPER(last_name) LIKE '%A%';