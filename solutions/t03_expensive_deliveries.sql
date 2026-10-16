SELECT id, delivery_address, delivery_cost, status
FROM delivery_orders
WHERE delivery_cost > 300
ORDER BY delivery_cost DESC, id DESC