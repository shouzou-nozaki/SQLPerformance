-- 個別にインデックスを作成
CREATE INDEX idx_customer ON orders(customer_id);
CREATE INDEX idx_date ON orders(order_date);
