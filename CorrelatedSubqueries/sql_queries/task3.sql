--Get list of products which price are higher than the average price of products in this category. 
--Sort ascendidng by product id. Scheme of result data set: id | title | price
select p.id, p.comment as title, p.price
from product p
    join product_title pt on pt.id = p.product_title_id
    join (select pt.product_category_id,avg(p.price) as avg
            from product p
                join product_title pt on p.product_title_id = pt.id
            group by pt.product_category_id) as avg_price on avg_price.product_category_id = pt.product_category_id
where p.price > avg_price.avg
order by p.id;