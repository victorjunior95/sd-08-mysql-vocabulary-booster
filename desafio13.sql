SELECT 
    p.ProductName 'Produto', p.Price 'Preço'
FROM
    w3schools.order_details od
        INNER JOIN
    products p ON od.ProductID = p.ProductID
GROUP BY od.ProductID , od.Quantity
HAVING od.Quantity > 80
ORDER BY Produto;
