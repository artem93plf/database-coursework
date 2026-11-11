ALTER TABLE book_catalog 
ADD FOREIGN KEY (topic_code) REFERENCES topics(code) ON DELETE RESTRICT,
DROP COLUMN topic_title