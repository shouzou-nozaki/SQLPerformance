-- 1. 遅いインデックスを強制的に使わせてみる
EXPLAIN ANALYZE
SELECT /*+ IndexScan(scale_data idx_slow) */ count(*) 
FROM scale_data 
WHERE section = 'A' AND id2 = 999;

-- 2. 速いインデックスを使ってみる
EXPLAIN ANALYZE
SELECT /*+ IndexScan(scale_data idx_fast) */ count(*) 
FROM scale_data 
WHERE section = 'A' AND id2 = 999;