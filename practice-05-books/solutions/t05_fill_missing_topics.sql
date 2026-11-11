INSERT INTO topics (code, title)
SELECT topic_code, MIN(topic_title)
FROM book_catalog
WHERE topic_code NOT IN (
  SELECT code
  FROM topics
)
GROUP BY topic_code