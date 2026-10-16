SELECT MIN(birth_date) as min_birth_date, max(birth_date) as max_birth_date
from clients
where birth_date is not null