SELECT option_id, COUNT(option_id) as subscribers_count
from subscriber_options
GROUP BY option_id
ORDER BY subscribers_count DESC, option_id ASC
LIMIT 3