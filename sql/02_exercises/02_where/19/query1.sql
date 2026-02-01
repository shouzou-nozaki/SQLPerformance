-- パターン①：万能SQL(インデックスは使用されない)
-- warehouse_id = 5 で検索したい場合（5 をパラメータとして渡している想定）
EXPLAIN ANALYZE
SELECT * FROM inventory
WHERE (warehouse_id = 5 OR 5 IS NULL)
  AND (stock_status = 'OUT' OR 'OUT' IS NULL);


-- サブクエリを使って、定数畳み込みを起こさせず「実行時まで値が決まらない」状況を作り出す
EXPLAIN ANALYZE
SELECT * FROM inventory
WHERE (warehouse_id = (SELECT 5) OR (SELECT 5) IS NULL)
  AND (stock_status = (SELECT 'OUT'::text) OR (SELECT 'OUT'::text) IS NULL);