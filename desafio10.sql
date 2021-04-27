SELECT 
    pro.productName AS 'Produto',
    MIN(ord.quantity) AS 'Mínima',
    MAX(ord.quantity) AS 'Máxima',
    ROUND(AVG(ord.quantity), 2) AS 'Média'
FROM
    w3schools.products AS pro
        INNER JOIN
    w3schools.order_details AS ord ON ord.productID = pro.productID
GROUP BY `Produto`
HAVING `mÉDIA` > 20.00
ORDER BY `Média` , `Produto`;
