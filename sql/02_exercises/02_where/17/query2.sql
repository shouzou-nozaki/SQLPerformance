-- パターン②：文字列を自動で数値変換し比較(インデックスが使用されない)
-- 数値 500000 で検索（クォートなし）
EXPLAIN ANALYZE
SELECT * FROM products WHERE product_code = 500000;

-- PostgreSQLでは、上記クエリはエラーとしている
-- そのため、強制的にキャストしてあげて他DBを再現
EXPLAIN ANALYZE
SELECT * FROM products WHERE product_code::integer = 500000;