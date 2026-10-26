select kind, status, COUNT(DISTINCT(id)) as tickets_count, MIN(price) as min_price, max(price) as max_price
from tickets
GROUP BY kind, status
ORDER BY kind ASC, status ASC