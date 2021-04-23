SELECT 
cust.ContactName AS `Nome de contato`,
ship.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM w3schools.orders AS ord
INNER JOIN w3schools.shippers AS ship
ON ord.ShipperID = ship.ShipperID
INNER JOIN w3schools.customers AS cust
ON cust.CustomerID = ord.CustomerID
WHERE ship.ShipperName = "Speedy Express" OR ship.ShipperName = "United Package"
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
