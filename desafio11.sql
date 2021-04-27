SELECT 
    c.ContactName AS `Nome`,
    c.Country AS `País`,
    COUNT(d.Country)  AS `Número de compatriotas`
FROM
    w3schools.customers c
    inner join
    w3schools.customers d
    on c.Country = d.Country
	and c.CustomerID<>d.CustomerID
GROUP BY c.Country , c.ContactName
ORDER BY c.ContactName;

