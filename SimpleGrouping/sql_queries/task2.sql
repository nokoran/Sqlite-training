select customer_order_id, sum(product_amount * price) as to_pay
from order_details
group by customer_order_id
having to_pay > 100
order by customer_order_id;