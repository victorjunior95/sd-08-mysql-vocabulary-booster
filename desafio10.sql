SELECT 
products.ProductName Produto,
MIN(details.Quantity) Mínima,
MAX(details.Quantity) Máxima,
ROUND(AVG(details.Quantity), 2) Média
FROM 
w3schools.products products
INNER JOIN
w3schools.order_details details
ON
details.ProductID = products.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
