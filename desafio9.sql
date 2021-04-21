SELECT 
CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome completo`,
COUNT(ord.EmployeeID) AS `Total de pedidos`
FROM
w3schools.employees AS emp,
w3schools.orders AS ord
WHERE
emp.EmployeeID = ord.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
