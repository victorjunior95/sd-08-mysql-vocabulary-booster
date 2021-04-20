SELECT
  p.ProductName AS `Produto`,
  p.Price AS `Preço`,
  o.Quantity
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
ORDER BY p.ProductName;
