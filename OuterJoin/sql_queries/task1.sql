SELECT cat.name as category, tit.title as product
FROM product as pro
  INNER JOIN product_title as tit ON pro.product_title_id = tit.id
  INNER JOIN product_category as cat ON cat.id=tit.product_category_id
  LEFT JOIN order_details as ord ON ord.product_id=pro.id
WHERE ord.product_id is NULL
ORDER BY pro.id