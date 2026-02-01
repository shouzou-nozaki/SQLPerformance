-- 1. テーブル作成
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_code VARCHAR(20) NOT NULL, -- 数値文字列
    product_name TEXT
);

-- 2. 100万件のデータを投入
INSERT INTO products (product_code, product_name)
SELECT 
    (i)::text,  -- 数値を文字列として保存
    'Item ' || i
FROM generate_series(1, 1000000) AS i;

