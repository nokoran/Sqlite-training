select sum(product_amount) as product_total, 
       sum(price_with_discount * product_amount) as to_pay_total,
       sum((price - price_with_discount) * product_amount) as discount_total
from order_details
where price_with_discount != price