SELECT 
prod.ProductName AS `Produto`,
prod.Price AS `Preço`
FROM
w3schools.products AS prod,
w3schools.order_details AS odet
WHERE
prod.ProductID = odet.ProductID
AND
odet.Quantity > 80
ORDER BY ProductName;
