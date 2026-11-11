UPDATE book_catalog AS bc
SET topic_title = (
  SELECT t.title
  FROM topics AS t
  WHERE t.code = bc.topic_code
)
WHERE bc.topic_code IN (
  SELECT code
  FROM topics
)