SELECT C.ContactName AS `Nome`, C.Country AS `País`, COUNT(C2.ContactName) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS C
INNER JOIN w3schools.customers AS C2
ON C.Country = C2.Country
GROUP BY C.ContactName, C.Country
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
