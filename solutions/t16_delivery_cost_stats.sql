SELECT count(id) as order_count, min(delivery_cost) as min_delivery_cost, max(delivery_cost) as max_delivery_cost, avg(delivery_cost)::NUMERIC(10,2) as avg_delivery_cost
from delivery_orders