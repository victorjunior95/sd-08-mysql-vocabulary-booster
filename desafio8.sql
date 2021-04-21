SELECT
ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
ON C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers AS S
ON S.ShipperID = O.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
