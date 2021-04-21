SELECT c.ContactName AS `Nome de contato`, s.ShipperName AS `Empresa que fez o envio`, o.OrderDate AS `Data do pedido`
FROM w3schools.orders o
INNER JOIN w3schools.customers c ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers s ON o.ShipperID = s.ShipperID
WHERE EXISTS (
SELECT * FROM w3schools.shippers ss
INNER JOIN w3schools.orders os ON ss.ShipperID = os.ShipperID
WHERE c.CustomerID = os.CustomerID AND ss.ShipperName IN ('Speedy Express', 'United Package')
)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
    