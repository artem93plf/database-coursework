SELECT DISTINCT topic_code 
FROM book_catalog
WHERE topic_code NOT IN (
  SELECT code 
  FROM topics
)
ORDER BY topic_code