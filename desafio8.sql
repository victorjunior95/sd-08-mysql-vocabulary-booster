SELECT 
  customers.ContactName AS 'Nome de contato', 
  shippers.ShipperName AS 'Empresa que fez o envio', 
  orders.OrderDate AS 'Data do pedido' 
FROM 
  w3schools.orders 
  INNER JOIN w3schools.customers ON customers.CustomerID = orders.CustomerID 
  INNER JOIN w3schools.shippers ON shippers.ShipperID = orders.ShipperID 
WHERE 
  shippers.ShipperName = 'Speedy Express' 
  OR shippers.ShipperName = 'United Package' 
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
