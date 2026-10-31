CREATE TABLE favorite_numbers (
  subscriber_id INTEGER NOT NULL 
  REFERENCES subscribers (id)
  ON DELETE CASCADE,
  
  favorite_id INTEGER NOT NULL
  REFERENCES subscribers (id)
  ON DELETE CASCADE,
  
  added_at DATE NOT NULL
  DEFAULT CURRENT_DATE,
  
  PRIMARY KEY (subscriber_id, favorite_id),

  CHECK (subscriber_id <> favorite_id)
)