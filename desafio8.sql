select c.CustomerName as 'Nome de contato', s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido' from w3schools.customers as c
inner join w3schools.orders as o on o.CustomerID = c.CustomerID 
inner join w3schools.shippers as s on o.ShipperID = s.ShipperID
;
