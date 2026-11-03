DELETE FROM subscribers s 
WHERE s.status = 'blocked' AND s.connected_at < '2025-01-01' 
AND id NOT IN (
  SELECT subscriber_id
  FROM sim_cards
  WHERE subscriber_id IS NOT NULL
)