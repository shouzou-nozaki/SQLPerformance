-- インデックス作成（部署と給与の複合インデックス）
CREATE INDEX idx_dept_salary ON employees(dept_id, salary);

VACUUM ANALYZE employees;