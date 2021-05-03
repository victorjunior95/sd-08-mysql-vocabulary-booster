SELECT ProductName AS Produto,
Price AS Preço
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
ON P.ProductID = OD.ProductID
WHERE Quantity > 80
ORDER BY Produto;
