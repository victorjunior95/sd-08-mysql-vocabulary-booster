SELECT 
    P.productName AS 'Produto',
    MIN(OD.quantity) AS 'Mínima',
    MAX(OD.quantity) AS 'Máxima',
    ROUND(AVG(OD.quantity), 2) AS 'Média'
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS OD ON OD.productID = P.productID
GROUP BY `Produto`
HAVING `mÉDIA` > 20.00
ORDER BY `Média` , `Produto`;
