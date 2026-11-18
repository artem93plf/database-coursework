SELECT c.title AS category_title, SUM(t.price) AS revenue 
FROM tickets AS t 
JOIN events AS e ON t.event_id = e.id 
JOIN categories AS c ON e.category_id = c.id 
GROUP BY c.title