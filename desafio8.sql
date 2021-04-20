SELECT c.ContactName AS 'Nome de contato',
o.OrderDate AS 'Data do pedido',
sh.ShipperName AS 'Empresa que fez o envio'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS sh
ON sh.ShipperID = o.ShipperID
WHERE sh.ShipperName = 'Speedy Express' OR sh.ShipperName = 'United Package'
ORDER BY c.ContactName, sh.ShipperName;
