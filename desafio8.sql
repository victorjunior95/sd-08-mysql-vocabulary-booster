SELECT c.ContactName AS `Nome de contato`,
o.OrderDate AS `Data do pedido`,
s.ShipperName AS `Empresa que fez o envio`
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
