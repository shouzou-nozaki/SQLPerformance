-- 関数インデックスの作成
CREATE INDEX idx_oracle_emulation ON messages (pi_processed(processed, receiver_id));