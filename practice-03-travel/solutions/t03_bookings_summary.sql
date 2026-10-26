SELECT COUNT(*) as bookings_count, count(rating) as rated_count,
COUNT(DISTINCT(client_id)) as clients_count, round(AVG(rating), 2) as avg_rating 
from hotel_bookings