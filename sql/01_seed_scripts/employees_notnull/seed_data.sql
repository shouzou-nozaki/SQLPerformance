-- 1. 検証用テーブルの作成
CREATE TABLE employees_notnull (
    employee_id INT PRIMARY KEY, -- PRIMARY KEYなので当然 NOT NULL
    date_of_birth DATE,          -- NULL許可（ここにIS NULL検索をかける）
    name TEXT
);