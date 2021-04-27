select concat(e.FirstName, ' ', e.LastName) as `Nome completo`, count(*) as `Total de pedidos` 
from w3schools.employees e 
inner join orders o on e.EmployeeID = o.EmployeeID 
group by `Nome completo` order by `Total de pedidos`;
