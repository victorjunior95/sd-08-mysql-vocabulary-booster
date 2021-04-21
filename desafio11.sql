SELECT wc.ContactName AS 'Nome', 
wc.Country AS 'País', 
COUNT(wc2.Country) AS 'Número de compatriotas' 
FROM w3schools.customers AS wc, w3schools.customers AS wc2
WHERE wc.ContactName <> wc2.ContactName AND wc.Country = wc2.Country
GROUP BY `Nome`
ORDER BY `Nome`;
