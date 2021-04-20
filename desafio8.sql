SELECT
  C.ContactName AS `Nome de contato`,
  S.ShipperName AS `Empresa que fez o envio`,
  O.OrderDate AS `Data do pedido`
FROM w3schools.customers C
INNER JOIN w3schools.orders O
ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.shippers S
ON S.ShipperID = O.ShipperID
WHERE S.ShipperName = 'Speedy Express'
OR S.ShipperName = 'United Package'
ORDER BY
  `Nome de contato`,
  `Empresa que fez o envio`,
  `Data do pedido`
;
