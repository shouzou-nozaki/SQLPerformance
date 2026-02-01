-- 100万1件目に、数値に変換できない値を混ぜる
INSERT INTO products (product_code, product_name) VALUES ('ABC', 'Invalid Data');

-- 実行時エラーが発生
SELECT * FROM products WHERE product_code = 500000;