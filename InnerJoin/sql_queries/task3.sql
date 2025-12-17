--Select products (title, price) which were purchased by customers with birthday date 
--range inclusive 1 Jan 2000 – 31 Dec 2010 (date format is YYYY-MM-DD), sorted ascending by a title and price. 
--Scheme of result data set: title | price
select distinct pt.title, p.price 
from product_title as pt inner join product as p on pt.id = p.product_title_id
inner join order_details as od on p.id = od.product_id
inner join customer_order as co on od.customer_order_id = co.id
inner join customer as c on co.customer_id = c.person_id
inner join person as per on per.id = c.person_id
where per.birth_date between '2000-01-01' and '2010-12-31'
order by pt.title, p.price;