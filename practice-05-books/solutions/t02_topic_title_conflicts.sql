SELECT topic_code, COUNT(DISTINCT topic_title) as title_variants
FROM book_catalog
GROUP BY topic_code
HAVING COUNT(DISTINCT topic_title) > 1
ORDER BY topic_code