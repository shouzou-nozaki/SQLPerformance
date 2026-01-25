-- インデックスサイズ比較
SELECT
    relname AS index_name,
    pg_size_pretty(pg_relation_size(oid)) AS index_size
FROM pg_class
WHERE relname IN ('idx_dob_single', 'idx_subsidiary_dob', 'idx_dob_with_constant');

-- ①単一列でのNULL検索
EXPLAIN ANALYZE SELECT * FROM employees WHERE date_of_birth IS NULL;

-- 複合インデックスでの効率的な検索
EXPLAIN ANALYZE SELECT * FROM employees 
WHERE subsidiary_id = 5 AND date_of_birth IS NULL;