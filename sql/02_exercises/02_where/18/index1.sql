-- 3. 複合インデックスを作成
CREATE INDEX idx_date_time ON log_data (date_part, time_part);
ANALYZE log_data;