EXPLAIN ANALYZE
SELECT * FROM messages
WHERE processed = 'N' AND receiver_id = 500;