--- 【検証①】インデックス対象外の列を更新（影響小）
-- インデックスに関係ない「評価(rating)」だけを1万件更新
\timing on
UPDATE employees_many_idx SET dummy = dummy + 1;
\timing off


--- 【検証②】インデックス対象の列を更新（影響大：DELETE + INSERT）
-- インデックス対象の「salary」を1万件更新
\timing on
UPDATE employees_many_idx SET salary = salary + 100;
\timing off


