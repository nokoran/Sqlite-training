--Get a list of categories names from product_category, where each product from product has at least one purchase in order_details. 
--Sort ascending by id.
SELECT id, name
FROM product_category
WHERE id NOT IN 
  (SELECT tit.product_category_id
   FROM product as p
    INNER JOIN product_title as tit ON tit.id = p.product_title_id
    LEFT JOIN order_details as ord ON ord.product_id = p.id
  WHERE ord.id is NULL
  UNION SELECT p.id
                    FROM product_category as p
    LEFT JOIN product_title as tit ON tit.product_category_id = p.id
                    WHERE tit.id is NULL)
ORDER BY id