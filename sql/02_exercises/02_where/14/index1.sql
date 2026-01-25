-- パターンA：NOT NULL列（employee_id）を含む複合インデックス
CREATE INDEX idx_notnull_combo ON employees_notnull (date_of_birth, employee_id);