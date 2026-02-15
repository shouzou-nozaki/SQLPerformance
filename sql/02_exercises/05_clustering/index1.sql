-- パターン①: テーブルを都度見に行ってUPPER評価
CREATE INDEX idx_subsidiary ON employees (subsidiary_id);

-- パターン②: インデックス作成時にUPPER評価
CREATE INDEX idx_subsidiary_name ON employees (subsidiary_id, (UPPER(last_name)));