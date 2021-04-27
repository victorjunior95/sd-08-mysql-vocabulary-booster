SELECT PRODUCTS.ProductName AS "Produto",
MIN(Quantity) AS "Mínima" ,
MAX(Quantity) AS "Máxima",
ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.order_details AS ORDER_DETAILS
INNER JOIN w3schools.products AS PRODUCTS
ON ORDER_DETAILS.ProductID = PRODUCTS.ProductID
GROUP BY ORDER_DETAILS.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, Produto;
