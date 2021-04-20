SELECT CONCAT(E.`FirstName`, ' ', E.`LastName`) AS `Nome completo`,
COUNT(O.`OrderID`) AS `Total de pedidos`
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E ON E.EmployeeID = O.EmployeeID 
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
