SELECT
    s.supplier_id,
    s.Name,
    s.Address,
    s.Phone,
    COUNT(p.Product_id) AS products_provided
FROM
    suppliers AS s
LEFT JOIN
    products AS p
ON
    s.supplier_id = p.supplier_id
GROUP BY
    s.supplier_id, s.Name, s.Email, s.Address , s.Phone
ORDER BY
    s.supplier_id;
