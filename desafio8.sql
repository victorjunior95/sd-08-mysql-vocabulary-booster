SELECT (SELECT c.ContactName FROM w3schools.customers AS c WHERE c.CustomerID = o.CustomerID) AS 'Nome de contato', (SELECT s.ShipperName FROM w3schools.shippers as s WHERE s.ShipperID = o.ShipperID) AS 'Empresa que fez o envio', o.OrderDate AS 'Data do pedido' FROM w3schools.orders AS o WHERE (SELECT s.ShipperName FROM w3schools.shippers as s WHERE s.ShipperID = o.ShipperID) IN ('Speedy Express', 'United Package') ORDER BY (SELECT c.ContactName FROM w3schools.customers AS c WHERE c.CustomerID = o.CustomerID), (SELECT s.ShipperName FROM w3schools.shippers as s WHERE s.ShipperID = o.ShipperID), o.OrderDate;

-- SELECT c.ContactName, s.ShipperName, o.OrderDate 
-- FROM w3schools.orders AS o
-- INNER JOIN w3schools.customers AS c
-- INNER JOIN w3schools.shippers as s
-- ON c.CustomerID = o.CustomerID AND s.ShipperID = o.ShipperID
-- WHERE s.ShipperName IN ('Speedy Express', 'United Package')
-- ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
