-- 2. ユーザー定義関数の作成（引数をそのまま返すだけだが、DBには中身が不明な「ブラックボックス」）
CREATE OR REPLACE FUNCTION my_blackbox(val INT) 
RETURNS INT AS $$
BEGIN
    RETURN val;
END;
$$ LANGUAGE plpgsql IMMUTABLE;