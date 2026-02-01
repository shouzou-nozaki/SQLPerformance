-- パターン①：文字列として比較(インデックスが使用される)
-- 文字列定数 '500000' で検索
EXPLAIN ANALYZE
SELECT * FROM products WHERE product_code = '500000';