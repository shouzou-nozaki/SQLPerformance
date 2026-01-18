-- 100万件のダミーデータを生成（PostgreSQLの強力な機能です）
INSERT INTO users (name, email, created_at)
SELECT 
    'User_' || i, 
    'user' || i || '@example.com',
    now() - (i || ' minutes')::interval
FROM generate_series(1, 1000000) AS i;