-- テーブル作成
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    subsidiary_id INT,
    last_name TEXT
);

-- 10万行のデータを投入
-- subsidiary_id は 1〜10 のランダム
-- last_name はランダムな文字列
INSERT INTO employees (subsidiary_id, last_name)
SELECT 
    (random() * 9 + 1)::int,
    md5(random()::text)
FROM generate_series(1, 100000);

-- 統計情報を更新
ANALYZE employees;