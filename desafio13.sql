SELECT wp.ProductName AS 'Produto', wp.Price AS 'Preço' 
FROM w3schools.products AS wp
INNER JOIN w3schools.order_details AS wod
ON wp.ProductID = wod.ProductID
WHERE wod.Quantity > 80
ORDER BY `Produto`;
