-- 式そのものをインデックスにする
CREATE INDEX idx_math_expression ON sensor_data ((value_a - 1000));
ANALYZE sensor_data;
