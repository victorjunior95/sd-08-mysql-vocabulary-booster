SELECT 
    productname AS 'Produto',
    MIN(O.quantity) AS 'Mínima',
    MAX(O.quantity) AS 'Máxima',
    ROUND(AVG(O.quantity), 2) AS 'Média'
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS O ON P.ProductID = O.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY 4 , 1;
