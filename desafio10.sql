SELECT p.ProductName AS `Produto`,
MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`,
ROUND(AVG(od.Quantity)) AS `Média`
From w3schools.products p
INNER JOIN w3schools.order_details od
ON p.ProductID = od.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Produto`;