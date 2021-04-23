SELECT product.ProductName AS 'Produto',
product.Price AS 'Preço'
FROM w3schools.order_details odetail
INNER JOIN w3schools.products product
ON odetail.ProductID = product.ProductID
WHERE odetail.Quantity > 80.00
ORDER BY product.ProductName;
