SELECT tab1.ContactName AS 'Nome', tab1.Country AS 'País',
COUNT(*) AS `Número de compatriotas`
FROM w3schools.customers AS tab1, w3schools.customers AS tab2
WHERE tab1.Country = tab2.Country AND tab1.ContactName <> tab2.ContactName
GROUP BY tab1.ContactName, tab1.Country
ORDER BY tab1.ContactName;
