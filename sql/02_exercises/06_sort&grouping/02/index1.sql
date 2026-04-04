-- 基本となる昇順インデックスを作成
CREATE INDEX idx_dept_salary_asc ON employees(dept_id ASC, salary ASC);

VACUUM ANALYZE employees;
