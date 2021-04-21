SELECT 
    (SELECT 
            p.ProductName
        FROM
            w3schools.products p
        WHERE
            p.ProductID = o.ProductID) AS Produto,
    (SELECT 
            p.Price
        FROM
            w3schools.products p
        WHERE
            p.ProductID = o.ProductID) AS Preço
FROM
    w3schools.order_details o
WHERE
    o.Quantity > 80
ORDER BY Produto;
