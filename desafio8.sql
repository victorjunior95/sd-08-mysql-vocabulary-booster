SELECT ct.contactname AS `Nome de contato`,
sh.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.orders AS `O`
INNER JOIN w3schools.customers AS `ct`
ON O.CustomerID = ct.CustomerID
INNER JOIN w3schools.shippers AS `sh`
ON O.ShipperID = sh.ShipperID
WHERE O.shipperId IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
