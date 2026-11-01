SELECT family_owner_id, COUNT(*) as members_count
FROM subscribers
WHERE family_owner_id IS NOT NULL
GROUP BY family_owner_id
ORDER BY family_owner_id ASC