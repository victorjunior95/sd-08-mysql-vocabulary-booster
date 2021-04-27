SELECT 
    CONCAT(EM.firstName, ' ', EM.lastName) AS 'Nome completo',
    COUNT(ORD.orderID) AS 'Total de pedidos'
    FROM w3schools.employees AS EM INNER JOIN w3schools.orders AS ORD ON ORD.EmployeeID = EM.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
