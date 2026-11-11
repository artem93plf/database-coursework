SELECT id, title, author2
FROM book_catalog
WHERE author2 IS NOT NULL
ORDER BY id ASC