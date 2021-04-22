SELECT Products.ProductName AS Produto,
MIN(Orders_Details.Quantity) AS 'Mínima',
MAX(Orders_Details.Quantity) AS 'Máxima',
ROUND(AVG(Orders_Details.Quantity), 2) AS 'Média'
FROM w3schools.products AS Products
INNER JOIN w3schools.order_details AS Order_Details ON Products.ProductID = Orders_Details.ProductID
GROUP BY Products.ProductID
HAVING 'Média' > 20
ORDER BY `Média`, Produto;
