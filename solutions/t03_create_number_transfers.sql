CREATE TABLE number_transfers (
  id SERIAL PRIMARY KEY,

  subscriber_id INTEGER NOT NULL UNIQUE
  REFERENCES subscribers (id)
  ON DELETE CASCADE,

  donor_operator TEXT NOT NULL,

  requested_at DATE NOT NULL,

  status TEXT NOT NULL
  DEFAULT 'pending'
  CHECK (status = 'pending' OR status = 'done' OR status = 'rejected')
)