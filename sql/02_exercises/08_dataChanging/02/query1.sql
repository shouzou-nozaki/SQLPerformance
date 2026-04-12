--- 【検証①】インデックスなしでの条件削除（探索コスト大）
-- 100件削除を試みる
\timing on
DELETE FROM employees_no_idx WHERE id <= 100;
\timing off

--- 【検証②】インデックスありでの条件削除（探索コスト小＋更新コスト大）
-- 同じ100件を削除
\timing on
DELETE FROM employees_many_idx WHERE id <= 100;
\timing off