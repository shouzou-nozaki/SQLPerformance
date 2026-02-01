-- 1. テーブル作成
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    sale_date TIMESTAMP NOT NULL,
    amount DECIMAL(10, 2)
);

-- 2. 100万件のランダムデータを投入（数秒かかります）
INSERT INTO sales (sale_date, amount)
SELECT 
    '2020-01-01'::timestamp + (random() * (interval '5 years')) as sale_date,
    random() * 1000 as amount
FROM generate_series(1, 1000000);
