select id, kind, to_city_id, depart_date, price 
from tickets
ORDER BY depart_date ASC, id ASC
OFFSET 10 LIMIT 10