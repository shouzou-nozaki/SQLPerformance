-- 3. インデックス作成と統計更新
CREATE INDEX idx_product_code ON products(product_code);
ANALYZE products;