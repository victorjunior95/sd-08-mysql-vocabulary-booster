SELECT 
    B.ProductName AS 'Produto',
    MIN(A.Quantity) AS 'Mínima',
    MAX(A.Quantity) AS 'Máxima',
    ROUND(AVG(A.Quantity), 2) AS 'Média'
FROM
    w3schools.order_details A
        JOIN
    w3schools.products B ON A.ProductID = B.ProductID
GROUP BY B.ProductName
HAVING AVG(A.Quantity) > 20.00
ORDER BY AVG(A.Quantity) , B.ProductName;
