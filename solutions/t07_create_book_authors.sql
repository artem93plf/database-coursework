CREATE TABLE book_authors (
  book_id INTEGER NOT NULL,
  FOREIGN KEY (book_id) REFERENCES book_catalog(id) ON DELETE CASCADE,
  author_name TEXT NOT NULL,
  PRIMARY KEY (book_id, author_name)
)