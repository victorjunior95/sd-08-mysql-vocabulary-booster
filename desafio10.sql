SELECT (
  SELECT ProductName
  FROM w3schools.products
  WHERE ProductID = w3schools.order_details.ProductID
) AS `Produto`,
MIN(Quantity) AS `Mínima`,
MAX(Quantity) AS `Máxima`,
ROUND(SUM(Quantity) / COUNT(ProductID), 2) AS `Média`
FROM w3schools.order_details
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
