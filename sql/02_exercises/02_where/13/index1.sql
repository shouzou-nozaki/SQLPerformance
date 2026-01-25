-- パターンA：単一列インデックス(PostgreSQL vs Oracleの差を知る)
CREATE INDEX idx_dob_single ON employees(date_of_birth);