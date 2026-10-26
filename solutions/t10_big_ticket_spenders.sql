select client_id, 
sum(case when status <> 'refunded' then 1 else 0 end) as tickets_count,
sum(price) as total_spent
from tickets
where status <> 'refunded'
GROUP BY client_id
HAVING sum(price) > 50000
ORDER BY total_spent DESC, client_id