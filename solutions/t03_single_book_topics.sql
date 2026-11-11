SELECT topic_code 
FROM book_catalog
GROUP BY topic_code
HAVING COUNT(*) = 1
ORDER BY topic_code