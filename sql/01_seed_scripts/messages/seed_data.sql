-- テーブル作成
CREATE TABLE messages (
    message_id SERIAL PRIMARY KEY,
    receiver_id INT NOT NULL,
    processed CHAR(1) NOT NULL CHECK (processed IN ('Y', 'N')),
    content TEXT
);