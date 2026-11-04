CREATE TABLE devices (
  id SERIAL PRIMARY KEY,
  
  subscriber_id INTEGER NOT NULL 
  REFERENCES subscribers (id)
  ON DELETE CASCADE,
  
  imei text NOT NULL
  CONSTRAINT valid_imei UNIQUE,
  
  model text NOT NULL,
  
  release_year INTEGER NOT NULL
  CONSTRAINT valid_year
  CHECK(release_year >= 2007 and release_year <= 2030),
  registered_at date NOT NULL
  DEFAULT NOW()
)