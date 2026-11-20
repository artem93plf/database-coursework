SELECT e.title AS event_title, c.title AS category_title, e.starts_on AS starts_on 
FROM events AS e 
JOIN categories AS c ON e.category_id = c.id 
WHERE e.venue_id IS NULL