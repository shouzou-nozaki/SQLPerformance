-- パターンB：ユーザー定義関数（UDF）を含むインデックス
CREATE INDEX idx_udf_combo ON employees_notnull (date_of_birth, my_blackbox(employee_id));