SELECT
    id AS ticket_id,
    buyer_id,
    bought_on,
    ROW_NUMBER() OVER (
        PARTITION BY buyer_id
        ORDER BY bought_on ASC, id ASC
    ) AS ticket_no
FROM tickets;