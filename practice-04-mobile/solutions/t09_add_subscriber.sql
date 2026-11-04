INSERT INTO subscribers (
  full_name,
  phone,
  tariff_id,
  connected_at,
  family_owner_id
)
VALUES ('Ирина Соколова', 
  '+7 900 555-12-34', 
  (SELECT id
  FROM tariffs
  WHERE name = 'Базовый'),
  '2026-10-01',
  NULL
  )