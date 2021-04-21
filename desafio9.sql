-- total = count
SELECT
CONCAT(employee.FirstName, ' ', employee.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.employees AS employee
INNER JOIN w3schools.orders AS ordr
ON ordr.EmployeeID = employee.EmployeeID
GROUP BY ordr.EmployeeID
ORDER BY 2;
