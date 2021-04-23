select  p.ProductName as 'Produto', min(o.Quantity) as'Mínima', max(o.Quantity) as'Máxima',
round(avg(o.Quantity),2) as 'Média'
from w3schools.products as p
inner join w3schools.order_details as o on p.ProductID = o.ProductID
group by `produto` ;





select concat(e.FirstName,' ',e.LastName) as 'Nome completo', count(o.EmployeeID )as'Total de pedidos'
from w3schools.orders as o 
inner join w3schools.employees as e on e.EmployeeID = o.EmployeeID
group by `Nome completo` order by  `Total de pedidos`;
