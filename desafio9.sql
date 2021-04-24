SELECT 
    CONCAT(E.firstName, ' ', E.lastName) AS 'Nome completo',
    COUNT(O.orderID) AS 'Total de pedidos'
FROM
    w3schools.employees AS E
        INNER JOIN
    w3schools.orders AS O ON O.employeeID = E.employeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
