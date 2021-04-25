SELECT
  b.ProductName AS `Produto`,
  MIN(a.Quantity) AS `Mínima`,
  MAX(a.Quantity) AS `Máxima`,
  ROUND(AVG(a.Quantity), 2) AS `Média`
FROM
  w3schools.order_details AS a
  INNER JOIN w3schools.products AS b ON a.ProductID = b.ProductID
GROUP BY
  a.ProductID
HAVING
  `Média` > 20
ORDER BY
  `Média`,
  `Produto`;
