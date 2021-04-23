SELECT
a.ContactName AS 'Nome de contato',
b.ShipperName AS 'Empresa que fez o envio',
c.OrderDate AS 'Data do pedido'
FROM w3schools.orders c
INNER JOIN w3schools.customers a ON c.CustomerID = a.CustomerID
INNER JOIN w3schools.shippers b ON c.ShipperID = b.ShipperID
WHERE b.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
