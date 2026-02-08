-- パターン②：早いインデックス(section,id2がアクセス述語)
CREATE INDEX idx_fast ON scale_data (section, id2, id1);
