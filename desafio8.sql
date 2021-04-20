SELECT
  C.ContactName AS `Nome de contato`,
  S.ShipperName AS `Empresa que fez o envio`,
  O.OrderDate AS `Data do pedido`
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
  ON C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers AS S
  ON O.ShipperID = S.ShipperID
WHERE O.ShipperID IN (1, 2)
ORDER BY 1, 2, 3;
