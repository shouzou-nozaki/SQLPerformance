-- テーブル作成
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    subsidiary_id INT NOT NULL,
    date_of_birth DATE,
    name TEXT
);