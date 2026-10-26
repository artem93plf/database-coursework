UPDATE delivery_orders
set delivery_cost = delivery_cost + 50
where is_completed = false and delivery_cost < 200