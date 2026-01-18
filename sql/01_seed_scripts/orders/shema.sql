-- 100万件のダミーデータ投入（約10〜20秒かかります）
INSERT INTO orders (customer_id, status, order_date, amount)
SELECT
    (random() * 10000)::int,                    -- 1万人の顧客
    (ARRAY['OPEN', 'CLOSED', 'PENDING'])[floor(random() * 3 + 1)],
    CURRENT_DATE - (random() * 730 || ' days')::interval, -- 過去2年分
    (random() * 10000)::decimal(10,2)
FROM generate_series(1, 1000000);