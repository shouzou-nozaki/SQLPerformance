-- 3. 結合列にインデックスを張る（が、ハッシュ結合では使われないはず）
CREATE INDEX idx_emp_id ON employees(id);
CREATE INDEX idx_sales_emp ON sales(employee_id);
ANALYZE employees;
ANALYZE sales;