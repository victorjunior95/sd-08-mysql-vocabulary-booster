use w3schools;
select c.CustomerName as `Nome de contato`, s.ShipperName as `Empresa que fez o envio`, o.OrderDate as `Data do pedido`
from customers c
inner join orders o on c.CustomerID = o.CustomerID
inner join shippers s on s.ShipperID = o.ShipperID
where s.ShipperID in (1, 2) order by c.CustomerName, s.ShipperName, o.OrderDate;