USE w3schools;
SELECT 
    pr.ProductName AS `Produto`, pr.Price AS `Preço`
FROM
    order_details AS od
        INNER JOIN
    products AS pr ON od.ProductID = pr.ProductID
WHERE
    Quantity > 80
ORDER BY `Produto`
;
