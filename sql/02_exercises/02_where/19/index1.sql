-- 3. インデックス作成
CREATE INDEX idx_inv_warehouse ON inventory(warehouse_id);
CREATE INDEX idx_inv_status ON inventory(stock_status);
ANALYZE inventory;