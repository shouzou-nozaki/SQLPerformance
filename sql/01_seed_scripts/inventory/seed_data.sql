-- 1. 新しい検証用テーブル作成
CREATE TABLE inventory (
    item_id SERIAL PRIMARY KEY,
    warehouse_id INT NOT NULL,     -- 倉庫ID
    stock_status VARCHAR(10),      -- 在庫状況 ('IN', 'OUT', 'RESERVED')
    category_id INT,               -- カテゴリ
    last_updated TIMESTAMP
);

-- 2. 100万件のデータを投入
INSERT INTO inventory (warehouse_id, stock_status, category_id, last_updated)
SELECT 
    (i % 30) + 1,                            -- 30拠点の倉庫
    (ARRAY['IN', 'OUT', 'RESERVED'])[i % 3 + 1],
    (i % 200) + 1,                           -- 200カテゴリ
    NOW() - (i % 1000) * INTERVAL '1 minute'
FROM generate_series(1, 1000000) AS i;
