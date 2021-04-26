SELECT
CONCAT(emp.FirstName, " ", emp.LastName) AS "Nome completo",
COUNT(emp.EmployeeID) AS "Total de pedidos"
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS emp
ON emp.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
