UPDATE sim_cards
SET subscriber_id = NULL
WHERE subscriber_id in (
  SELECT id
  FROM subscribers
  WHERE status = 'closed'
);

DELETE FROM subscribers
WHERE status = 'closed'