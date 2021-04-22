SELECT 
custom.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'

FROM 
w3schools.customers AS custom, 
w3schools.shippers AS ship,
w3schools.orders AS orders

WHERE 
custom.CustomerID = orders.CustomerID
AND
orders.ShipperID = ship.ShipperID
AND
ship.ShipperName in ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
