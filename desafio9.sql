SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.orders;
SELECT * FROM w3schools.shippers;
SELECT * FROM w3schools.employees;
SELECT COUNT(od.Quantity) FROM w3schools.order_details AS od;

SELECT
CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
COUNT(od.Quantity) AS `Total de pedidos`
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS e
ON o.EmployeeID = e.EmployeeID
INNER JOIN w3schools.order_details AS od
ON o.OrderID = od.OrderID
GROUP BY `Nome completo`;

SELECT o.OrderID,
od.Quantity,
o.EmployeeID
FROM w3schools.orders AS o
INNER JOIN w3schools.order_details AS od
ON o.OrderID = od.OrderID;

