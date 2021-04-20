SELECT  ProductName AS `Produto`,
Price AS `Preço`
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
WHERE od.Quantity > 80
GROUP BY p.ProductID
ORDER BY `Produto` ASC;
