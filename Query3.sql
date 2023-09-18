SELECT
    c.customer_id,
    c.full_name,
    SUM(od.Items * od.price) AS total_purchases
FROM
    customers AS c
JOIN
    orders AS o
ON
    c.customer_id = o.customer_id
JOIN
    orders AS od
ON
    o.order_id = od.order_id
GROUP BY
    c.customer_id, c.full_name
ORDER BY
    total_purchases DESC;
