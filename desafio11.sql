SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
COUNT(c2.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c1,
w3schools.customers AS c2
WHERE c2.Country = c1.Country AND c2.ContactName <> c1.ContactName
GROUP BY c1.ContactName, c1.Country
ORDER BY c1.ContactName;
