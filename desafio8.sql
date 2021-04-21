SELECT c.ContactName AS 'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS sh
ON sh.ShipperID = o.ShipperID
WHERE sh.ShipperID IN (1 , 2)
ORDER BY c.ContactName, sh.ShipperName;
