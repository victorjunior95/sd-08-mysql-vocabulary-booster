SELECT P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS Od
WHERE Od.Quantity > 80
ORDER BY `Produto`;
