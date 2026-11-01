ALTER TABLE tariffs 
ADD CONSTRAINT monfee_valid CHECK (monthly_fee >= 0),
ADD CONSTRAINT minutes_valid CHECK (minutes >= 0),
ADD CONSTRAINT gb_valid CHECK (gb >= 0),
ALTER COLUMN is_archived SET DEFAULT false