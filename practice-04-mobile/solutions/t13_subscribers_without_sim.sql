SELECT id, full_name
FROM subscribers 
WHERE id NOT IN (
  SELECT subscriber_id
  FROM sim_cards
  WHERE subscriber_id IS NOT NULL
)