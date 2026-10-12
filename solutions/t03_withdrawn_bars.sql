SELECT serial_number as serial, deposited_at as deposit_date
FROM gold_bars
WHERE status = 'withdrawn';