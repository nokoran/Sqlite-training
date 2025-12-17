SELECT p.name,
       p.surname,
       round(avg_per_order.avg, 2) AS avg_purchase,
       sum(od.price_with_discount * od.product_amount) AS sum_purchase
  FROM order_details od
       INNER JOIN
       customer_order co ON od.customer_order_id = co.id
       INNER JOIN
       person p ON p.id = co.customer_id
       INNER JOIN
       (
           SELECT p.id,
                  avg(price_with_discount * product_amount) AS avg,
                  sum(od.price_with_discount * od.product_amount) AS sum_purchase
             FROM person p
                  INNER JOIN
                  customer_order co ON p.id = co.customer_id
                  INNER JOIN
                  order_details od ON od.customer_order_id = co.id
            GROUP BY p.id
            ORDER BY sum_purchase
       )
       AS avg_per_order ON avg_per_order.id = p.id
 GROUP BY p.id
UNION
SELECT p.name,
       p.surname,
       avg(od.price_with_discount * od.product_amount) AS avg_purchase,
       sum(od.price_with_discount * od.product_amount) AS sum_purchase
  FROM order_details od
       INNER JOIN
       customer_order AS co ON co.id = od.customer_order_id
       LEFT JOIN
       person AS p ON co.customer_id = p.id
 WHERE p.id IS NULL
 GROUP BY p.id
HAVING avg_purchase > 70
 ORDER BY sum_purchase,
          p.surname;
