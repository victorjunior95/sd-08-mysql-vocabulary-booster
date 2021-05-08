SELECT t1.ContactName AS 'Nome',
t1.Country AS 'País',
COUNT(t2.Country) -1 AS 'Número de compatriotas'
FROM w3schools.customers AS t1, w3schools.customers AS t2
where t1.Country = t2.Country
group by t1.ContactName, t1.Country
having COUNT( t1.Country) > 1
ORDER BY 1;
