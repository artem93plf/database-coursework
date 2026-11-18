SELECT e.id AS event_id, e.title AS event_title
FROM events AS e 
WHERE e.id NOT IN (
  SELECT event_id
  FROM tickets
)