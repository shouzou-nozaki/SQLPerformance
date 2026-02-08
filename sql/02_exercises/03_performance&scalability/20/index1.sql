-- パターン①：遅いインデックス(sctionのみアクセス述語)
CREATE INDEX idx_slow ON scale_data (section, id1, id2);