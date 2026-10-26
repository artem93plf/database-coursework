SELECT s1.id, s1.client_id, s1.price 
from tickets as s1
WHERE s1.price > (SELECT avg(s2.price)
  FROM tickets as s2
  WHERE s1.client_id = s2.client_id)