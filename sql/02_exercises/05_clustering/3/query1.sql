--- 検証1 Index Scan(2段階検索・構造的に不利)
EXPLAIN (ANALYZE, BUFFERS)
SELECT name FROM users_test WHERE age = 25;

--- 検証2 Index-Only Scan(解決策)
EXPLAIN (ANALYZE, BUFFERS)
SELECT id FROM users_test WHERE age = 25;

--- 検証3 CLUSTER命令後の変化(索引構成表のシミュレート)
CLUSTER users_test USING idx_users_age;
EXPLAIN (ANALYZE, BUFFERS)
SELECT name FROM users_test WHERE age = 25;