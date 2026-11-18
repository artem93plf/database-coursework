SELECT e.title AS event_title, c.title AS category_title, v.title AS venue_title
FROM events AS e 
JOIN categories AS c ON e.category_id = c.id 
LEFT JOIN venues AS v ON e.venue_id = v.id