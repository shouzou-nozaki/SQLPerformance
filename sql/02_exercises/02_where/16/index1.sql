-- 3. 日付列にインデックスを貼る
CREATE INDEX idx_sales_date ON sales(sale_date);

-- 4. 統計情報を最新にする
ANALYZE sales;