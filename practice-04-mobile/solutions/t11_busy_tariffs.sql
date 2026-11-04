SELECT tariff_id, COUNT(*) as active_count
FROM subscribers
WHERE status = 'active'
GROUP BY tariff_id
HAVING COUNT(*) >= 3
ORDER BY active_count DESC, tariff_id ASC