-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"
-- SELECT * FROM  w3schools.customers
SELECT 
sub.`ContatName` AS 'Nome de contato',
sub.`CompanyName` AS 'Empresa que fez o envio',
sub.`OrderDate` AS 'Data do pedido'
  FROM ( 
  SELECT c.ContactName AS 'ContatName', s.ShipperName AS 'CompanyName', o.OrderDate FROM w3schools.orders AS o
  INNER JOIN w3schools.customers AS c
  ON o.CustomerID = c.CustomerID
  INNER JOIN  w3schools.shippers AS s
  ON o.ShipperID = s.ShipperID
  ) AS sub
  ORDER BY 1,2,3;
