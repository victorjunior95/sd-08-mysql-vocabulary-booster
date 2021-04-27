SELECT CONCAT(Emp.FirstName, ' ', Emp.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.employees AS `Emp`
INNER JOIN w3schools.orders AS `O`
ON Emp.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
