SELECT ProductName AS `Produto`,
Price AS `Preço`
FROM w3schools.products as p
INNER JOIN w3schools.order_details as od
WHERE p.ProductID = od.ProductID AND od.Quantity > 80
ORDER BY `Produto`;
