-- 1. 既存の個別インデックスを削除
DROP INDEX idx_customer;
DROP INDEX idx_date;

-- 2. マルチカラムインデックスを作成
CREATE INDEX idx_cust_date ON orders(customer_id, order_date);