SELECT CONCAT(e.FirstName ,' ',e.LastName) AS 'Nome completo',
COUNT(e.EmployeeID) AS 'Total de pedidos'
FROM orders o
INNER JOIN employees e ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY 2;
