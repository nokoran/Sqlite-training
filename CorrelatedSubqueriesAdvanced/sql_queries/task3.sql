select temp_table.id as product_id, temp_table.title, temp_table.manufacturer_id, m.name as manufacturer
from(
select pt.id, pt.title, max(ord.sum_product), p.manufacturer_id
from product_title pt
    left join product p on p.product_title_id = pt.id
    LEFT JOIN 
        (SELECT od.product_id, SUM(od.product_amount) as sum_product
        FROM order_details od
        GROUP BY od.product_id) as ord ON ord.product_id = p.id
group by pt.id
order by pt.id) as temp_table
left join manufacturer m on m.id = temp_table.manufacturer_id