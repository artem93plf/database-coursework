SELECT id, name, monthly_fee
FROM options
WHERE monthly_fee > (
  SELECT AVG(monthly_fee)
  FROM options
) AND id IN (
  SELECT option_id
  FROM subscriber_options
)