SELECT 
    CONCAT(A.FirstName, ' ', A.LastName) AS 'Nome completo',
    COUNT(B.OrderID) AS 'Total de pedidos'
FROM
    w3schools.employees A
        JOIN
    w3schools.orders B ON A.EmployeeID = B.EmployeeID
GROUP BY CONCAT(A.FirstName, ' ', A.LastName)
ORDER BY COUNT(B.OrderID);
