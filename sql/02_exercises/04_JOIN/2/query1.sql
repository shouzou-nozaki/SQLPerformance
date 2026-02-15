-- 検証①：結合列のインデックスが使われるか
EXPLAIN ANALYZE
SELECT * FROM sales s 
JOIN employees e ON s.employee_id = e.id
WHERE s.sale_date > now() - interval '1 month';

-- 検証②：ハッシュテーブルの肥大化
-- パターンA: SELECT * (巨大な note 列を含む)
EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM sales s JOIN employees e ON s.employee_id = e.id;

    -- パターンB: SELECT 指定列 (必要な列だけ)
    EXPLAIN (ANALYZE, BUFFERS)
    SELECT s.amount, e.name FROM sales s JOIN employees e ON s.employee_id = e.id;