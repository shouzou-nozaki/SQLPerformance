-- テーブル作成
CREATE TABLE users_test (
    id INT PRIMARY KEY,         -- これが論理キー
    age INT,                    -- セカンダリインデックス用
    name TEXT                   -- インデックスに含まれない重いデータ
);

-- 10万件のランダムデータ挿入
INSERT INTO users_test (id, age, name)
SELECT 
    s, 
    (random() * 80)::int, 
    md5(random()::text) -- 適当な長い文字列
FROM generate_series(1, 100000) AS s;
