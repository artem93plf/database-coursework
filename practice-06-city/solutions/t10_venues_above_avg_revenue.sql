WITH venue_revenue AS (
    SELECT
        v.title AS venue_title,
        SUM(t.price) AS revenue
    FROM venues v
    JOIN events e ON v.id = e.venue_id
    JOIN tickets t ON e.id = t.event_id
    GROUP BY v.id, v.title
)
SELECT
    venue_title,
    revenue
FROM venue_revenue
WHERE revenue > (
    SELECT AVG(revenue)
    FROM venue_revenue
);