-- 本命：部分インデックス (processed = 'N' の行のみ)
CREATE INDEX idx_messages_partial ON messages (receiver_id) 
WHERE processed = 'N';