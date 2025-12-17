select product_category.name as category, count(product_title.product_category_id) as count
from product_category inner join product_title on product_title.product_category_id = product_category.id
inner join product on product.product_title_id = product_title.id
group by product_title.product_category_id
having count != 0 
order by category