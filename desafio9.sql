SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos' FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS C ON E.EmployeeID = C.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;