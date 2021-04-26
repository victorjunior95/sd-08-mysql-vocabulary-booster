SELECT customers.ContactName AS 'Nome de contato', shippers.ShipperName AS 'Empresa que fez o envio', orders.OrderDate AS 'Data do pedido' FROM w3schools.orders AS orders INNER JOIN w3schools.customers AS customers ON O.CustomerID = C.CustomerID INNER JOIN w3schools.shippers AS shippers ON O.ShipperID = S.ShipperID WHERE S.ShipperName IN ('Speedy Express', 'United Package') ORDER BY `Nome de contato`, shippers.ShipperName, orders.OrderDate;

-- SELECT
--   customers.ContactName AS 'Nome de contato',
--   shippers.ShipperName AS 'Empresa que fez o envio',
--   orders.OrderDate AS 'Data do pedido'
-- FROM w3schools.orders AS orders
-- INNER JOIN w3schools.customers AS customers
-- ON O.CustomerID = C.CustomerID
-- INNER JOIN w3schools.shippers AS shippers
-- ON O.ShipperID = S.ShipperID
-- WHERE S.ShipperName IN ('Speedy Express', 'United Package')
-- ORDER BY `Nome de contato`, shippers.ShipperName, orders.OrderDate;
