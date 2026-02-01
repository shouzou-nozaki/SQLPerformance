-- 1. テーブル作成
CREATE TABLE log_data (
    id SERIAL PRIMARY KEY,
    date_part DATE NOT NULL,      -- 日付列
    time_part TIME NOT NULL,      -- 時刻列
    log_message TEXT
);

-- 2. 100万件のデータを投入（過去約3年分）
INSERT INTO log_data (date_part, time_part, log_message)
SELECT 
    CURRENT_DATE - (i / 1000 * INTERVAL '1 day'),
    (format('%s:%s:00', (i % 24), ((i % 60)))::TIME),
    'Log message ' || i
FROM generate_series(1, 1000000) AS i;

