SELECT
  ProductName AS `Produto`,
  MIN(Quantity) AS `Mínima`,
  MAX(Quantity) AS `Máxima`,
  ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.order_details AS order_details
JOIN w3schools.products AS products
ON order_details.ProductID = products.ProductID
GROUP BY order_details.ProductID
ORDER BY `Média`, `Produto`;
