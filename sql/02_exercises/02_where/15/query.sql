-- 1. インデックスサイズ比較
SELECT
    relname AS index_name,
    pg_size_pretty(pg_relation_size(oid)) AS index_size
FROM pg_class
WHERE relname IN ('idx_oracle_emulation');

-- 2. 普通の書き方（インデックスが使われないことを確認）
EXPLAIN ANALYZE 
SELECT * FROM messages 
WHERE processed = 'N' AND receiver_id = 500;

-- 3. Oracle流：関数を使った書き方（インデックスが使われるはず！）
EXPLAIN ANALYZE 
SELECT * FROM messages 
WHERE pi_processed(processed, receiver_id) = 500;