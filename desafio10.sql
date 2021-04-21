USE w3schools;
SELECT 
    pr.ProductName AS `Produto`,
    MIN(od.Quantity) AS `Mínima`,
    MAX(od.Quantity) AS `Máxima`,
    ROUND(AVG(od.Quantity), 2) AS `Média`
FROM
    products AS pr
        INNER JOIN
    order_details AS od ON od.ProductID = pr.ProductID
GROUP BY pr.ProductName
HAVING `Média` > 20
ORDER BY `Média` , `Produto`;
;
