SELECT CONCAT(e.firstName, ' ', e.lastName) AS 'Nome completo', COUNT(o.OrderID) AS 'Total de pedidos' 
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS e
ON o.employeeID = e.employeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
