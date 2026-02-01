-- パターン②：複合インデックスの一部だけでもアクセス述語になるようにする(インデックス使用)
EXPLAIN ANALYZE
SELECT count(*) FROM log_data 
WHERE (date_part + time_part) > (NOW() - INTERVAL '1 day')
  AND date_part >= (CURRENT_DATE - INTERVAL '1 day'); -- ★先頭列をアクセス述語にする