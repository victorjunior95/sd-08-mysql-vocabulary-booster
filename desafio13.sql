SELECT
  ProductName AS Produto,
  Price AS Preço
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
  ON P.ProductID = OD.ProductID
GROUP BY 1, 2
HAVING MAX(OD.Quantity) > 80
ORDER BY 1;
