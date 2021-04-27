SELECT ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.products AS Products
INNER JOIN w3schools.order_details AS Od
ON Products.ProductID = Od.ProductID
GROUP BY Products.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
