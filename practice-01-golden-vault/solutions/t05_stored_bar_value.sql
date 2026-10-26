SELECT serial_number || ' ' || '(' || refinery || ')' as bar_label, price_per_gram * weight_grams as total_value
FROM gold_bars
WHERE status = 'stored';