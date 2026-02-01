-- パターン①：列の連結(インデックスは使用されない)
-- 列を連結して timestamp 型にして比較
EXPLAIN ANALYZE
SELECT count(*) FROM log_data 
WHERE (date_part + time_part) > (NOW() - INTERVAL '1 day');