SELECT
  CONCAT(e.FirstName,' ', e.LastName) AS `Nome completo`,
  COUNT(o.EmployeeID) AS `Total de pedidos`
FROM employees e
INNER JOIN orders o
ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
