SELECT CONCAT(employee.FirstName, ' ', employee.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de Pedidos'
FROM w3schools.employees employee
INNER JOIN w3schools.orders `order`
ON employee.EmployeeID = `order`.EmployeeID
GROUP BY `Nome completo`
ORDER BY COUNT(*);
