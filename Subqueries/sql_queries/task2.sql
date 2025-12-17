select p.surname, p.name, sum(od.price_with_discount * od.product_amount) as total_expenses
from person as p 
join customer as c on p.id=c.person_id
join customer_order as co on c.person_id=co.customer_id
join order_details as od on co.id=od.customer_order_id
where p.birth_date between '2000-01-01' and '2010-12-31'
group by co.customer_id
having total_expenses > (
    select avg(total_sum) from (
        select sum(od.price_with_discount * od.product_amount) as total_sum 
        from customer as c 
        join customer_order as co on c.person_id=co.customer_id
        join order_details as od on co.id=od.customer_order_id
        group by co.customer_id)
    )
order by total_expenses, p.surname;

