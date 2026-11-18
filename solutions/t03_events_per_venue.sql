SELECT v.title AS venue_title, COUNT(e.id) AS events_count
FROM venues AS v
LEFT JOIN events AS e ON v.id = e.venue_id
GROUP BY v.id, v.title