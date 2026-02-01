-- パターン②：計算値側で計算する(インデックスは使用される)
-- 「列はそのまま」に保つ
EXPLAIN ANALYZE
SELECT * FROM sensor_data 
WHERE value_a > 50000 + 1000;

-- 51,000 ではなく、もっと大きな値で絞り込む
EXPLAIN ANALYZE
SELECT * FROM sensor_data 
WHERE value_a > 99000;