SELECT c.ContactName AS'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c
ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS sh
ON o.ShipperID = sh.ShipperID
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY 1,2,3; /*esta linha é baseado no codigo de digo castro*/
