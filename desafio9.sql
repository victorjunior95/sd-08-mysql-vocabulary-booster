SELECT CONCAT(EMPLOYEES.FirstName, " ", EMPLOYEES.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS ORDERS
INNER JOIN w3schools.employees AS EMPLOYEES
ON ORDERS.EmployeeID = EMPLOYEES.EmployeeID
GROUP BY EMPLOYEES.EmployeeID
ORDER BY `Total de pedidos`;
