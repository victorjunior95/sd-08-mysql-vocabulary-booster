SELECT ProductName AS `Produto`, Price AS `Preço`
FROM w3schools.products AS p
WHERE EXISTS 
(
SELECT * FROM w3schools.order_details as od
WHERE od.ProductID = p.ProductID
AND od.Quantity > 80
) ORDER BY `Produto` ASC;
