select id, client_id, price 
from hotel_bookings
WHERE price > (SELECT avg(price)
  FROM hotel_bookings)