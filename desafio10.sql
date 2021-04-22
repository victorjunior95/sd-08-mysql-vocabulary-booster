SELECT Products.ProductName AS Produto,
MIN(Order_Details.Quantity) AS 'Mínima',
MAX(Order_Details.Quantity) AS 'Máxima',
ROUND(AVG(Order_Details.Quantity), 2) AS 'Média'
FROM w3schools.products AS Products
INNER JOIN w3schools.order_details AS Order_Details ON Products.ProductID = Order_Details.ProductID
GROUP BY Products.ProductID
HAVING `Média` > 20
ORDER BY `Média`, Produto;
