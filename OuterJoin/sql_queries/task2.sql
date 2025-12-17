select distinct p.surname, p.name, p.birth_date 
from person as p
    inner join customer as c on p.id = c.person_id
    left join customer_order as co on co.customer_id = c.person_id
where co.customer_id is null
order by p.surname, p.birth_date;