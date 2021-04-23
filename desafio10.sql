select p.ProductName as 'Produto', min(o.Quantity) as'Mínima', max(o.Quantity) as'Máxima',
round(avg(o.Quantity),2) as `Média`
from w3schools.order_details as o
inner join w3schools.products as p on p.ProductID = o.ProductID 
group by `produto`having `Média` > 20
order by `Média`, `produto`;
