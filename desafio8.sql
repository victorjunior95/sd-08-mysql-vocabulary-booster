SELECT ContactName AS 'Nome do contato',
CASE
WHEN ShipperID = 1 THEN 'Speedy Express'
WHEN ShipperID = 2 THEN 'United Package'
END AS 'Empresa que fez o envio',
OrderDate AS 'Data o pedido'
FROM w3schools.orders
INNER JOIN w3schools.customers
ON w3schools.orders.CustomerID = w3schools.customers.CustomerID
WHERE ShipperID != 3
ORDER BY ContactName, ShipperID, OrderDate;
