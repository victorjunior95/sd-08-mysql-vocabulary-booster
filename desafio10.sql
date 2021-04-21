SELECT wp.ProductName AS 'Produto', 
MIN(wod.Quantity) AS 'Mínima', 
MAX(wod.Quantity) AS'Máxima',
ROUND(AVG(wod.Quantity), 2) AS 'Média'
FROM w3schools.products AS wp
INNER JOIN w3schools.order_details AS wod
ON wp.ProductID = wod.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
