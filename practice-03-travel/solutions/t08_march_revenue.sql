SELECT COALESCE(sum(price), 0) as revenue, COALESCE(round(avg(price), 2), 0) as avg_check
from hotel_bookings
where status = 'completed' and (check_in BETWEEN '2026-03-01' and '2026-03-31')