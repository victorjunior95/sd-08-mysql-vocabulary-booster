select concat(e.FirstName,' ',e.LastName) as 'Nome completo', count(o.EmployeeID )as'Total de pedidos'
from w3schools.orders as o 
inner join w3schools.employees as e on e.EmployeeID = o.EmployeeID
group by `Nome completo` order by  `Total de pedidos`;
