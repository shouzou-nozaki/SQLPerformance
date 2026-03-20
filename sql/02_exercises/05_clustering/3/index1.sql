-- セカンダリインデックス作成
CREATE INDEX idx_users_age ON users_test(age);

-- 統計情報を最新にする（PostgreSQLのプランナーを賢くする）
VACUUM ANALYZE users_test;