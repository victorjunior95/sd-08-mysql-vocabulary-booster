SELECT
  prod.ProductName AS `Produto`,
  MIN(oDet.Quantity) AS `Mínima`,
  MAX(oDet.Quantity) AS `Máxima`,
  ROUND(AVG(oDet.Quantity), 2) AS `Média`
FROM w3schools.products AS prod 
INNER JOIN w3schools.order_details AS oDet
ON oDet.ProductID = prod.ProductID
GROUP BY oDet.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
