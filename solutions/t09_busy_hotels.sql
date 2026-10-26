SELECT hotel_id, 
sum(case WHEN status = 'completed' then 1 else 0 end) as completed_count,
sum(price) as revenue
from hotel_bookings
WHERE status = 'completed'
GROUP BY hotel_id
HAVING sum(case WHEN status = 'completed' then 1 else 0 end) >= 3
ORDER BY completed_count DESC, hotel_id ASC