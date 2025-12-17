select c.name as city, sum(od.price_with_discount * od.product_amount) as income
from order_details as od inner join customer_order as co on od.customer_order_id = co.id
inner join supermarket as s on co.supermarket_id = s.id
inner join street as st on s.street_id = st.id
inner join city as c on c.id = st.city_id
where co.operation_time between '2020-11-01' and '2020-11-30'
group by c.name
order by city, income;