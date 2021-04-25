SELECT
  c.ContactName AS `Nome de contato`,
  s.ShipperName AS `Empresa que fez o envio`,
  o.OrderDate AS `Data do pedido`
FROM customers c
INNER JOIN orders o
ON c.CustomerID = o.CustomerID
INNER JOIN shippers s
ON s.ShipperID = o.ShipperID
WHERE ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
