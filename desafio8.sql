SELECT tc.ContactName AS 'Nome de contato',
ts.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS tc ON o.CustomerID = tc.CustomerID
INNER JOIN w3schools.shippers AS ts ON o.ShipperID = ts.ShipperID
WHERE o.ShipperID <> 3
ORDER BY tc.ContactName, ts.ShipperName, o.OrderDate;
