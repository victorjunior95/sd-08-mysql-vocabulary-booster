SELECT p.productName AS 'Produto', p.price AS 'Preço'
FROM w3schools.products as p
INNER JOIN w3schools.order_details AS o
ON p.productID = o.productID
WHERE o.quantity > 80
ORDER BY `Produto`;
