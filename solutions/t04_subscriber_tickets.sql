SELECT b.full_name AS buyer_name, e.title AS event_title, t.price AS price 
FROM tickets AS t 
JOIN buyers AS b ON t.buyer_id = b.id 
JOIN events AS e ON t.event_id = e.id
WHERE b.is_subscriber = true