-- 比較用：通常のマルチカラムインデックス (全件対象)
CREATE INDEX idx_messages_full ON messages (receiver_id, processed);