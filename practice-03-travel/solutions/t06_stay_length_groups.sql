SELECT CASE
WHEN nights BETWEEN 1 and 3 THEN '1-3'
WHEN nights BETWEEN 4 and 7 THEN '4-7'
WHEN nights >= 8 THEN '8+'
END as stay_group, COUNT(*) as bookings_count, SUM(price) as total_price
FROM hotel_bookings
WHERE status <> 'cancelled' AND nights >= 1
GROUP BY stay_group