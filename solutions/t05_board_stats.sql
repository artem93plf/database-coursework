SELECT board, COUNT(DISTINCT(id)) as bookings_count, round(avg(price), 2) as avg_price
from hotel_bookings
WHERE status <> 'cancelled'
GROUP BY board