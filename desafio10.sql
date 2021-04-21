SELECT 
    (SELECT 
            ProductName
        FROM
            w3schools.products p
        WHERE
            p.ProductID = o.ProductID) AS Produto,
    MIN(o.Quantity) AS Mínima,
    MAX(o.Quantity) AS Máxima,
    ROUND(AVG(o.Quantity), 2) AS Média
FROM
    w3schools.order_details o
GROUP BY Produto
HAVING Média > 20
ORDER BY Média , Produto;
