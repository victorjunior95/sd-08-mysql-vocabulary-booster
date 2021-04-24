SELECT
  CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
  COUNT(*) AS `Total de pedidos`
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS ord
ON emp.EmployeeID = ord.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
