ALTER TABLE sim_cards 
DROP CONSTRAINT fk_sim_cards_subscriber,
ADD CONSTRAINT fk_sim_cards_subscriber
FOREIGN KEY (subscriber_id)
REFERENCES subscribers (id)
ON DELETE SET NULL