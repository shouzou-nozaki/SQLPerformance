-- パターンC:定数を使ったインデックス(テクニカルな解決策)
-- NULLにならない定数 '1' を含める（PostgreSQLでは関数インデックスとして表現）
CREATE INDEX idx_dob_with_constant ON employees(date_of_birth, (1));