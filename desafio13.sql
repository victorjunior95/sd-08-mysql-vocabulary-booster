SELECT 
ProductName Produto,
Price Preço
FROM 
w3schools.products products
INNER JOIN
w3schools.order_details details
ON
products.ProductID = details.ProductID AND
details.Quantity > 80
ORDER BY Produto
