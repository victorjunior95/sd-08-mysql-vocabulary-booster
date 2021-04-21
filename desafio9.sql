SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome Completo',
  COUNT(*) AS 'Total de Pedidos'
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS e
ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY `Total de Pedidos`;
