SELECT DISTINCT(CONCAT(e.FirstName, ' ', e.LastName)) AS 'Nome completo',
od.Quantity AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.EmployeeID = o.EmployeeID
INNER JOIN w3schools.order_details AS od
ON od.OrderID = o.OrderID
ORDER BY od.Quantity;