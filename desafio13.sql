SELECT 
    P.productName AS 'Produto', P.price AS 'Preço'
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS OD ON OD.productID = P.productID
WHERE
    OD.quantity > 80
ORDER BY `Produto`;
