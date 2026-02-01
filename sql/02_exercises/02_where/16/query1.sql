-- パターン①：文字列に変換して比較（インデックスが使われないはず）
EXPLAIN ANALYZE
SELECT count(*) FROM sales
WHERE to_char(sale_date, 'YYYY-MM-DD') = '2023-01-01';