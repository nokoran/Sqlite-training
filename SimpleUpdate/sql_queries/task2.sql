update product 
set price = price * 0.75
where product_title_id in (
  select product_title.id
  from product_title inner join product_category on product_title.product_category_id=product_category.id
  where product_category.name = 'fruits' or product_category.name = 'vegetables' 
);