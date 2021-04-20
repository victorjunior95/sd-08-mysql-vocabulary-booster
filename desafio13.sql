SELECT 
    B.ProductName AS 'Produto', B.Price AS 'Preço'
FROM
    w3schools.order_details A
        JOIN
    w3schools.products B ON A.ProductID = B.ProductID
WHERE
    A.Quantity > 80.00
ORDER BY B.ProductName;
