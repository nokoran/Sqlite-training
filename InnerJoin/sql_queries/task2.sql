--Select products (id, title, category name, price), sorted ascending by category name and product title. 
--Scheme of result data set: id | title | category | price
select p.id as id, pt.title as title, pc.name as category, p.price as price 
from product as p inner join product_title as pt on p.product_title_id=pt.id
inner join product_category as pc on pt.product_category_id=pc.id
order by pc.name, title;