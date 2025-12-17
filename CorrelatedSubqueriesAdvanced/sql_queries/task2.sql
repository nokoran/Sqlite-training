select id, comment as title, count_with_discount_5, count_without_discount_5, round((count_with_discount_5 - count_without_discount_5)*1.0/(count_with_discount_5 + count_without_discount_5)*100, 2) as difference
from
(select p.id, p.comment, with_5.sum as count_with_discount_5, sum(product_amount) - with_5.sum as count_without_discount_5
from product p
    inner join order_details od on p.id = od.product_id
    inner join (select p.id, sum(od.product_amount) as sum
                from order_details od
                inner join product p on od.product_id = p.id
                where round(100 - (od.price_with_discount/od.price*100.0)) > 5
                group by p.id) 
    as with_5 on with_5.id = p.id 
group by p.id
union 
select p.id, p.comment, sum(product_amount) - without_5.sum as count_without_discount_5, without_5.sum as count_with_discount_5
from product p
    inner join order_details od on p.id = od.product_id
    inner join (select p.id, sum(od.product_amount) as sum
                from order_details od
                inner join product p on od.product_id = p.id
                where round(100 - (od.price_with_discount/od.price*100.0)) <= 5
                group by p.id) 
    as without_5 on without_5.id = p.id
group by p.id)
union
select p.id, p.comment, 0 as count_with_discount_5, 0 as count_without_discount_5, 0.0 as difference
from product p
where p.id not in (select distinct product_id from order_details)
order by p.id