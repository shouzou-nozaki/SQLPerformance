-- パターン②：範囲指定で検索（インデックスが効く！）
EXPLAIN ANALYZE
SELECT count(*) FROM sales
WHERE sale_date >= '2023-01-01 00:00:00'
  AND sale_date <  '2023-01-02 00:00:00';