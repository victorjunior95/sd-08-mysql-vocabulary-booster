SELECT (
  SELECT ContactName
  FROM w3schools.customers
  WHERE CustomerID = w3schools.orders.CustomerID
) AS `Nome de contato`,
(
  SELECT ShipperName
  FROM w3schools.shippers
  WHERE ShipperID = w3schools.orders.ShipperID
) AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.orders
HAVING `Empresa que fez o envio` IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
