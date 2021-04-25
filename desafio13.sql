SELECT ProductName AS Produto, Price AS Preço
FROM w3schools.products
WHERE EXISTS (
  SELECT ProductID FROM w3schools.order_details
  WHERE order_details.ProductID = products.ProductID
  AND Quantity > 80
)
ORDER BY Produto;
