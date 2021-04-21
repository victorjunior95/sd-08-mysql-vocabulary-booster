SELECT
  P.ProductName as 'Produto',
  P.Price as 'Preço'
FROM w3schools.order_details AS OD
INNER JOIN w3schools.products AS P
ON OD.ProductID = P.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
