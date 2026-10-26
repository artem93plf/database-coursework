SELECT id, hotel_id, check_in, price
FROM hotel_bookings
ORDER BY price DESC, id ASC
LIMIT 5