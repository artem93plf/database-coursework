SELECT COUNT(*) AS sims_count,
  SUM(
  CASE WHEN is_esim = true THEN 1 
  ELSE 0 
  END) AS esim_count, 
  round(SUM(
  CASE WHEN is_esim = true THEN 1 
  ELSE 0 
  END) * 100.0 / COUNT(*), 2)
  AS esim_percent
FROM sim_cards