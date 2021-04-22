SELECT
CONCAT(emp.FirstName, ' ', emp.LastName) 'Nome completo',
COUNT(orders.EmployeeID) 'Total de pedidos'
FROM
w3schools.employees emp,
w3schools.orders orders
WHERE
emp.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
