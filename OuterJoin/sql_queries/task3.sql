SELECT p.surname, p.name, sum(od.price_with_discount * od.product_amount) AS sum
  FROM order_details od
       INNER JOIN customer_order as co ON co.id = od.customer_order_id
       LEFT JOIN person as p ON co.customer_id = p.id
 GROUP BY p.surname
UNION ALL
SELECT p.surname, p.name, 0
  FROM customer as c
    INNER JOIN person as p ON p.id = c.person_id
    LEFT JOIN customer_order as co ON co.customer_id = p.id
 WHERE co.id IS NULL
 ORDER BY sum, p.surname;