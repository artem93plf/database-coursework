SELECT
    category_title,
    event_title,
    revenue,
    revenue_rank
FROM (
    SELECT
        category_title,
        event_title,
        revenue,
        DENSE_RANK() OVER (
            PARTITION BY category_id
            ORDER BY revenue DESC
        ) AS revenue_rank
    FROM (
        SELECT
            c.id AS category_id,
            c.title AS category_title,
            e.title AS event_title,
            SUM(t.price) AS revenue
        FROM tickets t
        JOIN events e ON t.event_id = e.id
        JOIN categories c ON e.category_id = c.id
        GROUP BY c.id, c.title, e.id, e.title
    ) AS event_revenue
) AS ranked_events
WHERE revenue_rank <= 3;