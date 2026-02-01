-- パターン②：必要な条件のみ動的SQL(インデックスは使用される)
-- パラメータがある条件のみを WHERE 句に記述
EXPLAIN ANALYZE
SELECT * FROM inventory
WHERE warehouse_id = 5 
  AND stock_status = 'OUT';