SELECT c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM orders o
INNER JOIN customers c ON c.CustomerID = o.CustomerID
INNER JOIN shippers s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN('Speedy Express','United Package')
ORDER BY 1, 2, 3;
