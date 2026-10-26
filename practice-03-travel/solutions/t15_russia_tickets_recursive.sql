WITH RECURSIVE russian_places AS (
    SELECT id
    FROM places
    WHERE name = 'Россия'
      AND kind = 'country'

    UNION ALL

    SELECT p.id
    FROM places p, russian_places r
    WHERE p.parent_id = r.id
)
SELECT
    kind,
    COUNT(*) AS tickets_count,
    SUM(price) AS total_price
FROM tickets
WHERE status <> 'refunded'
  AND to_city_id IN (
      SELECT id
      FROM russian_places
  )
GROUP BY kind
ORDER BY kind ASC;