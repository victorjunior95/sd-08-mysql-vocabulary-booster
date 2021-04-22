SELECT CName.ContactName AS "Nome de contato",
SName.ShipperName AS "Empresa que fez o envio",
ODate.OrderDate AS "Data do pedido"
FROM w3schools.orders AS ODate
INNER JOIN w3schools.customers AS CName
ON ODate.CustomerID = CName.CustomerID
INNER JOIN w3schools.shippers AS SName
ON ODate.ShipperID = SName.ShipperID
WHERE SName.ShipperName = "Speedy Express"
OR SName.ShipperName = "United Package"
ORDER BY CName.ContactName, SName.ShipperName, ODate.OrderDate;
