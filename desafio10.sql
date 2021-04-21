SELECT 
P.ProductName AS `Produto`,
MIN(OD.Quantity) as `Mínima`,
MAX(OD.Quantity) as `Máxima`,
ROUND(AVG(OD.Quantity)) as `Média`
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
