-- 評価列を追加(一部をNULLにする)
ALTER TABLE employees ADD COLUMN rating INT;
UPDATE employees SET rating = (random() * 5)::int WHERE id % 10 != 0; -- 10%をNULLにする

