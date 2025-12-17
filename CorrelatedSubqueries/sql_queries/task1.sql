select id, name
from city
where id not in (select city_id from street)
order by name;