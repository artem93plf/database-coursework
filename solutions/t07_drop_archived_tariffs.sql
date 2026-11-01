UPDATE subscribers
SET tariff_id = (
    SELECT id
    FROM tariffs
    WHERE name = 'Базовый'
)
WHERE tariff_id IN (
    SELECT id
    FROM tariffs
    WHERE is_archived = true
);

DELETE FROM tariffs
WHERE is_archived = true;