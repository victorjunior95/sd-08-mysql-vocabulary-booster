SELECT 
cus.ContactName AS `Nome de contato`,
shi.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM
w3schools.customers AS cus,
w3schools.shippers AS shi,
w3schools.orders AS ord
WHERE
cus.CustomerID = ord.CustomerID
AND
ord.ShipperID = shi.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
