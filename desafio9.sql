SELECT
  CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
  COUNT(orders.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees AS employees
JOIN w3schools.orders AS orders
ON orders.EmployeeID = employees.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos`;
