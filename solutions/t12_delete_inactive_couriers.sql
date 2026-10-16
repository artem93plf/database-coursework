DELETE FROM couriers 
WHERE is_active = false AND id not in (SELECT courier_id
  from delivery_orders
  where courier_id is not NULL)