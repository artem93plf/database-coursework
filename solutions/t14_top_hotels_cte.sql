WITH t1 AS (
    SELECT
        hotel_id,
        SUM(price) AS revenue
    FROM hotel_bookings
    WHERE status = 'completed'
    GROUP BY hotel_id
),
t2 AS (
    SELECT AVG(revenue) AS avg_revenue
    FROM t1
)
SELECT
    hotel_id,
    revenue
FROM t1
WHERE revenue > (SELECT avg_revenue FROM t2)
ORDER BY revenue DESC, hotel_id ASC;