-- 大量データをシミュレーションするテーブル
CREATE TABLE scale_data (
    id1 INT,
    id2 INT,
    section CHAR(1),
    padding TEXT -- 1行のサイズを大きくするためのゴミデータ
);

-- 100万件くらいのデータを投入（section A〜Jに各10万件）
INSERT INTO scale_data
SELECT 
    i, 
    MOD(i, 10000), -- id2は0〜9999の繰り返し
    CHR(65 + MOD(i, 10)), -- A〜Jの10種類
    REPEAT('x', 100)
FROM generate_series(1, 1000000) s(i);

