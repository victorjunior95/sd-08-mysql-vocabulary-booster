SELECT 
CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
COUNT(employees.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS employees
ON orders.EmployeeID = employees.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY `Total de pedidos`;
