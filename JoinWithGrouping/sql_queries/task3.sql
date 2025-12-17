select p.surname as surname, p.name as name , p.birth_date as birth_date  ,sum(od.price * od.product_amount) as sum
from order_details as od inner join customer_order as co on od.customer_order_id = co.id
inner join customer as c on co.customer_id = c.person_id
inner join person as p on c.person_id = p.id
where co.operation_time like '2021%' and c.discount = 0
group by p.surname
order by sum, surname;