SELECT ct1.ContactName AS `Nome`, ct1.Country AS `País`,
(COUNT(ct2.ContactName) -1) AS `Número de compatriotas`
FROM w3schools.customers AS ct1,
w3schools.customers AS ct2
WHERE ct1.Country = ct2.Country
GROUP BY `Nome`, `País`
ORDER BY `Nome`;