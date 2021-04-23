SELECT
CONCAT( a.FirstName, ' ', a.LastName ) AS 'Nome completo',
b.`total` AS 'Total de pedidos'
FROM w3schools.employees a
INNER JOIN (SELECT EmployeeID, COUNT(*) AS 'total' FROM w3schools.orders GROUP BY EmployeeID) b ON
a.EmployeeID = b.EmployeeID
ORDER BY b.`total`;
