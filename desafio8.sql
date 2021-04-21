SELECT customer.ContactName AS 'Nome de contato',
shipper.ShipperName AS 'Empresa que fez o envio',
`order`.OrderDate AS 'Data do pedido'
FROM w3schools.orders `order`
INNER JOIN w3schools.customers customer
ON `order`.CustomerID = customer.CustomerID
INNER JOIN w3schools.shippers shipper
ON `order`.ShipperID = shipper.ShipperID
WHERE shipper.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY customer.ContactName, shipper.ShipperName, `order`.OrderDate;
