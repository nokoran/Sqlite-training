select p.id, pt.title as product, p.price from product as p inner join product_title as pt on p.product_title_id=pt.id
where price > (select min(price) from product) * 2
order by price asc, product asc;