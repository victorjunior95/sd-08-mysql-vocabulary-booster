SELECT p.ProductName AS `Produto`,
p.Price AS `Preço`
FROM w3schools.products AS p, w3schools.order_details AS od
WHERE p.ProductID = od.ProductID AND od.Quantity > 80
ORDER BY `Produto`;
