-- 1. テーブル作成
CREATE TABLE sensor_data (
    id SERIAL PRIMARY KEY,
    value_a INT NOT NULL,
    value_b INT NOT NULL,
    measured_at TIMESTAMP DEFAULT NOW()
);

-- 2. 100万件のデータを投入（適当な散らばりを持たせる）
INSERT INTO sensor_data (value_a, value_b)
SELECT 
    (random() * 100000)::INT,
    (random() * 100000)::INT
FROM generate_series(1, 100000) AS i; -- まず10万件（高速化のため。100万でも可）

