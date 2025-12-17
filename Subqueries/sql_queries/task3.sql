select customer_order_id as order_id, count(od.product_id) as items_count
from order_details as od join customer_order as co on od.customer_order_id=co.id
where co.operation_time like '2021%'
group by customer_order_id
having items_count > (select avg(total_count) from 
    (select count(ord.product_id) as total_count
     from order_details as ord join customer_order as cord on cord.id = ord.customer_order_id
     group by cord.id))
order by items_count, order_id;