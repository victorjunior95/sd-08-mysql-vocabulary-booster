select p.ProductName as Produto, min(od.Quantity) as Mínima, max(od.Quantity) as Máxima, round(avg(od.Quantity), 2) as Média
from w3schools.products p
inner join w3schools.order_details od on p.ProductID = od.ProductID 
group by Produto having avg(od.Quantity) > 20
order by avg(od.Quantity), Produto;
