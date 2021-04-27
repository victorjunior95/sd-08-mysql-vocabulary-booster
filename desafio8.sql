SELECT * FROM w3schools.orders;

SELECT CUSTOMERS.ContactName AS `Nome de contato`,
SHIPPERS.ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
from w3schools.orders AS ORDERS
INNER JOIN w3schools.customers AS CUSTOMERS
ON ORDERS.CustomerID = CUSTOMERS.CustomerID
INNER JOIN w3schools.shippers AS SHIPPERS
ON ORDERS.ShipperID = SHIPPERS.ShipperID
WHERE ORDERS.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;