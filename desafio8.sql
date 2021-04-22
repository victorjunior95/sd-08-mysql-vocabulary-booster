-- USE w3schools;
-- SELECT 
--     c.ContactName AS `Nome de Contato`,
--     sh.ShipperName AS `Empresa que fez o envio`,
--     o.OrderDate AS `Data do pedido`
-- FROM
--     `customers` AS c
--         INNER JOIN
--     `orders` AS o ON c.CustomerID = o.CustomerID
--         INNER JOIN
--     shippers AS sh ON o.ShipperID = sh.ShipperID
-- WHERE
--     sh.ShipperName = 'Speedy Express'
--         OR 'United Package'
-- ORDER BY `Nome de Contato` , `Empresa que fez o envio` , `Data do pedido`
-- ;

SELECT
  C.ContactName AS 'Nome de contato',
  S.ShipperName AS 'Empresa que fez o envio',
  O.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.shippers AS S
ON O.ShipperID = S.ShipperID
WHERE S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, S.ShipperName, O.OrderDate;
