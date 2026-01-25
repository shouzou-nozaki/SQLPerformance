-- 1. インデックスサイズ比較
SELECT
    relname AS index_name,
    pg_size_pretty(pg_relation_size(oid)) AS index_size
FROM pg_class
WHERE relname IN ('idx_notnull_combo', 'idx_udf_combo');

-- 2. 基本のIS NULL検索
EXPLAIN ANALYZE SELECT * FROM employees_notnull WHERE date_of_birth IS NULL;

-- 3. 関数インデックスが使われるか確認
EXPLAIN ANALYZE SELECT * FROM employees_notnull 
WHERE date_of_birth IS NULL AND my_blackbox(employee_id) IS NOT NULL;

