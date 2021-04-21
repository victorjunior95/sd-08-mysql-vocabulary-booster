SELECT
CONCAT(e.FirstName, " ", e.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.EmployeeID = o.EmployeeID
WHERE EXISTS (
SELECT * FROM w3schools.employees
WHERE o.EmployeeID = e.employeeID
)
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
