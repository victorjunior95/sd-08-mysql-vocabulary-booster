SELECT 
prod.ProductName AS `Produto`,
MIN(odet.Quantity) AS `Mínima`,
MAX(odet.Quantity) AS `Máxima`,
ROUND(AVG(odet.Quantity), 2) AS `Média`
FROM
w3schools.order_details AS odet,
w3schools.products AS prod
WHERE
odet.ProductID = prod.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
