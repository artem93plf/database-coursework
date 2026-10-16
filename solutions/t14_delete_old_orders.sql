DELETE FROM delivery_orders
WHERE order_date < DATE '2025-01-01' and is_completed = false