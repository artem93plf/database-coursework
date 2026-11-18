SELECT b.full_name AS buyer_name, COUNT(t.id) AS tickets_count
FROM buyers AS b 
JOIN tickets AS t ON t.buyer_id = b.id 
GROUP BY b.full_name
HAVING(COUNT(*)) >= 3