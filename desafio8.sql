SELECT wc.ContactName AS 'Nome de contato', 
ws.ShipperName AS 'Empresa que fez o envio',
wo.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS wc
INNER JOIN w3schools.orders AS wo
ON wc.CustomerID = wo.CustomerID
INNER JOIN w3schools.shippers AS ws
ON wo.ShipperID = ws.ShipperID
WHERE ws.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
