SELECT C.ContactName as `Nome de contato`,
S.ShipperName as `Empresa que fez o envio`,
O.OrderDate as `Data do pedido`
FROM w3schools.customers as C
INNER JOIN w3schools.orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers AS S ON O.ShipperID = S.ShipperID
WHERE ShipperName = 'Speedy Express' OR ShipperName = 'United Package'
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
