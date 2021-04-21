SELECT CONCAT(we.FirstName, ' ', we.LastName) AS 'Nome completo', 
COUNT(wo.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS we
INNER JOIN w3schools.orders AS wo
ON we.EmployeeID = wo.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
