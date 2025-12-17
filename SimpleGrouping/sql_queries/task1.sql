select count(person_id) as customer_count, discount 
from customer
group by discount
order by discount;
