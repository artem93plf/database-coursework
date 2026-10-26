SELECT hotel_id, count(*) as bookings_count, 
  sum(case WHEN status = 'cancelled' then 1 else 0 end)  as cancelled_count,
  round(100.0 * sum(case WHEN status = 'cancelled' then 1 else 0 end)/count(*), 2) as cancel_percent 
FROM hotel_bookings
GROUP BY hotel_id
ORDER BY hotel_id ASC