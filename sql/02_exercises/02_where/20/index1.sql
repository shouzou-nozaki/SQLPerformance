-- 3. インデックス作成
CREATE INDEX idx_value_a ON sensor_data(value_a);
CREATE INDEX idx_value_b ON sensor_data(value_b);
ANALYZE sensor_data;