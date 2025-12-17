--Select products (id, title, price), sorted ascending by title. Scheme of result data set: id | title | price
select p.id as id, pt.title as title, p.price as price 
from product as p inner join product_title as pt
on p.product_title_id=pt.id
order by title;