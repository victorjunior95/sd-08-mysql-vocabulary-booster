SELECT cust.CustomerName AS `Nome de contato`,
ship.shippername AS `Empresa que fez o envio`,
ord.orderDate AS `Data do pedido`
FROM w3schools.customers cust
INNER JOIN w3schools.orders ord
ON cust.customerid = ord.customerid
INNER JOIN w3schools.shippers ship
ON ord.shipperid = ship.ShipperID
WHERE ord.shipperid IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
