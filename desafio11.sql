SELECT ca.ContactName AS 'Nome',
ca.Country AS 'País',
COUNT(cb.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS ca, w3schools.customers AS cb
WHERE ca.Country = cb.Country AND ca.ContactName <> cb.ContactName
GROUP BY ca.ContactName, ca.Country
ORDER BY ca.ContactName;
