SELECT
  (
    SELECT CONCAT(FirstName, ' ', LastName) FROM w3schools.employees
    WHERE employees.EmployeeID = w3schools.orders.EmployeeID
  ) AS 'Nome completo',
  COUNT(EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders
GROUP BY EmployeeID
ORDER BY `Total de pedidos`;
