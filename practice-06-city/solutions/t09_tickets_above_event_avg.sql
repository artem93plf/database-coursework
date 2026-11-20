SELECT t.id AS ticket_id, t.event_id AS event_id, t.price AS price 
FROM tickets AS t 
WHERE t.price > (
  SELECT AVG(t2.price) 
  FROM tickets AS t2 
  WHERE t2.event_id = t.event_id
)