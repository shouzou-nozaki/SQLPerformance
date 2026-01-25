-- 2. 確定的関数（OracleでいうDETERMINISTIC）の作成
-- PostgreSQLでは IMMUTABLE がそれに相当します
CREATE OR REPLACE FUNCTION pi_processed(p_processed CHAR, p_receiver INT)
RETURNS INT AS $$
BEGIN
    -- 'N'（未処理）の時だけ値を返し、それ以外（'Y'）は NULL を返す
    IF p_processed = 'N' THEN
        RETURN p_receiver;
    ELSE
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;