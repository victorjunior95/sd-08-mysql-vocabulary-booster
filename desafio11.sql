select c1.ContactName as Nome, c1.Country as País, count(c2.Country) - 1 as `Número de compatriotas` 
from w3schools.customers c1, w3schools.customers c2
where c1.Country = c2.Country
group by c1.CustomerID having `Número de compatriotas` > 0 order by c1.ContactName;
