SELECT tp.ProductName AS 'Produto',
tp.Price AS 'Preço'
FROM w3schools.order_details AS o 
INNER JOIN w3schools.products as tp ON o.ProductID = tp.ProductID
GROUP BY o.ProductID
HAVING MAX(o.Quantity) > 80
ORDER BY tp.ProductName;
