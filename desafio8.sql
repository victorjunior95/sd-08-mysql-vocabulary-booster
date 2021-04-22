SELECT Customers.ContactName AS 'Nome de contato',
Shippers.ShipperName AS 'Empresa que fez o envio',
Orders.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS Orders
INNER JOIN w3schools.customers AS Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN w3schools.shippers AS Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE Shippers.ShipperID IN (1, 2)
ORDER BY 'Nome de contato', Shippers.ShipperName, Orders.OrderDate;
