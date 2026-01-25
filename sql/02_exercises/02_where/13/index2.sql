-- パターンB：複合インデックス(Oracleでの解決策)
-- subsidiary_id は NOT NULL なので、これと組み合わせる
CREATE INDEX idx_subsidiary_dob ON employees(subsidiary_id, date_of_birth);