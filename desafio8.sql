-- SELECT * FROM w3schools.shippers;
-- SELECT * FROM w3schools.customers;
-- SELECT * FROM w3schools.orders;
SELECT 
customer.ContactName AS `Nome de contato`,
shipper.ShipperName AS `Empresa que fez o envio`,
ordr.OrderDate AS `Data do pedido`
FROM w3schools.customers AS customer
INNER JOIN w3schools.orders AS ordr
ON ordr.CustomerID = customer.CustomerID
INNER JOIN w3schools.shippers AS shipper
ON shipper.ShipperID = ordr.ShipperID
WHERE shipper.ShipperID IN (1, 2)
ORDER BY 1, 2, 3; 

-- Ordem das propriedades 
-- 1 - Nome de contato
-- 2 - Empresa que fez o envio
-- 3 - Data do pedido
