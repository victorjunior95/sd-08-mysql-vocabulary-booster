SELECT concat(FirstName, ' ', LastName) AS 'Nome Completo',
Quantity AS 'Total de pedidos' 
FROM w3schools.orders
INNER JOIN w3schools.employees
INNER JOIN w3schools.order_details
ON w3schools.orders.EmployeeID = w3schools.employees.EmployeeID 
AND w3schools.orders.OrderID = w3schools.order_details.OrderID
ORDER BY Quantity;
