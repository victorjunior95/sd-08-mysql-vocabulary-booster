SELECT concat(FirstName, ' ', LastName) AS 'Nome Completo',
Quantity AS 'Total de pedidos' 
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E
INNER JOIN w3schools.order_details AS OD
ON O.EmployeeID = E.EmployeeID 
AND O.OrderID = OD.OrderID
GROUP BY concat(FirstName,  ' ', LastName)
ORDER BY Quantity;
