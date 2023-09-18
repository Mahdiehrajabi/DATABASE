SELECT
    p.product_id,
    p.name,
    s.name,
    SUM(orders.Items * orders.price) AS total_amount
FROM
    products AS p
JOIN
    products_detail AS orders
ON
    p.product_id = orders.product_id
JOIN
    suppliers AS s
ON
    p.supplier_id = s.supplier_id
GROUP BY
    p.product_id, p.name, s.name
ORDER BY
    total_amount_sold DESC
LIMIT 10;
