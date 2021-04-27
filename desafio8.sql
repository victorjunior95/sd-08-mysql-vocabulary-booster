select c.ContactName as `Nome de contato`, s.ShipperName as `Empresa que fez o envio`, o.OrderDate as `Data do pedido` 
from w3schools.customers c
inner join w3schools.orders o on c.CustomerID = o.CustomerID
inner join w3schools.shippers s on s.ShipperID = o.ShipperID
where s.ShipperID in (1, 2) order by c.ContactName, s.ShipperName, o.OrderDate;
