SELECT
  ContactName AS `Nome de contato`,
  ShipperName AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
JOIN w3schools.customers AS customers
ON orders.CustomerID = customers.customerID
JOIN w3schools.shippers AS shippers
ON orders.ShipperID = shippers.ShipperID
WHERE ShipperName IN ("Speedy Express", "United Package")
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
