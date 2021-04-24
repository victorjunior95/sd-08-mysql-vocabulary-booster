select c.ContactName as 'Nome', c.Country as 'País', fonte2.sqcountry as 'Número de compatriotas'
from (select Country, (count(Country)-1) as sqcountry
from w3schools.customers 
group by (Country) having sqcountry > 0
)as fonte2
inner join w3schools.customers as c on c.Country = fonte2.Country order by `Nome`;
