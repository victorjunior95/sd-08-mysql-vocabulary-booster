SELECT CONCAT(te.FirstName, ' ', te.LastName) AS 'Nome completo',
		COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS te ON o.EmployeeID = te.EmployeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(*);