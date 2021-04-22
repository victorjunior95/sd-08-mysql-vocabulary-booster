SELECT Products.ProductName AS Produto, Products.Price AS 'Preço'
FROM w3schools.products AS Products
INNER JOIN w3schools.order_details AS Order_Details ON Products.ProductID = Order_Details.ProductID
WHERE Order_Details.Quantity > 80
ORDER BY Produto;
