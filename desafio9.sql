SELECT 
  CONCAT(
    employees.FirstName, ' ', employees.LastName
  ) AS 'Nome completo', 
  COUNT(orders.OrderID) AS 'Total de pedidos' 
FROM 
  w3schools.employees 
  INNER JOIN w3schools.orders ON orders.EmployeeID = employees.EmployeeID 
GROUP BY 
  employees.EmployeeID 
ORDER BY 
  `Total de pedidos`;
