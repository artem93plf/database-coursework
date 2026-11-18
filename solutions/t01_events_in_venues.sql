SELECT e.title AS event_title, v.title AS venue_title, v.address AS address
FROM events AS e 
JOIN venues AS v ON e.venue_id = v.id