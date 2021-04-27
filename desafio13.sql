SELECT pdt.ProductName AS 'Produto',
pdt.Price AS 'Preço'
FROM w3schools.products AS pdt
INNER JOIN w3schools.order_details AS order
ON pdt.ProductID = order.ProductID
WHERE order.Quantity > 80
ORDER BY `Produto`;
