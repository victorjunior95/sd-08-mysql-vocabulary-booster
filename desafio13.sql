SELECT 
    products.ProductName AS 'Produto',
    products.Price AS 'Preço'
FROM
    w3schools.order_details
        INNER JOIN
    w3schools.products ON order_details.ProductID = products.ProductID
GROUP BY order_details.ProductID , order_details.Quantity
HAVING order_details.Quantity > 80
ORDER BY Produto;
