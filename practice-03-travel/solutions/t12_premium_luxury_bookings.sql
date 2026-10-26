SELECT id, client_id, hotel_id, price 
from hotel_bookings
where status <> 'cancelled' and hotel_id IN (select id 
  from hotels
  where stars = 5) and client_id IN (SELECT id
  from clients
  where level = 'premium')