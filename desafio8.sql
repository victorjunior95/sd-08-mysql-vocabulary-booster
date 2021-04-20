SELECT c.ContactName AS `Nome de contato`,
c.CustomerName AS `Empresa que fez o envio`,
o.OrderDate as `Data do pedido`
FROM w3schools.customers c
LEFT JOIN w3schools.orders o
ON c.CustomerID = o.CustomerID
WHERE ShipperID IN (1, 2);
