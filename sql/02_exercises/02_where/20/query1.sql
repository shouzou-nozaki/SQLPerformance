-- パターン①：列に計算をかける(インデックスは使用されない)
-- 「列 - 1000」という式を WHERE 句に書く
EXPLAIN ANALYZE
SELECT * FROM sensor_data 
WHERE value_a - 1000 > 50000;