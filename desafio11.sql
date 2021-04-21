SELECT 
cus.ContactName AS `Nome`,
cus.Country AS `País`,
COUNT(cus2.Country) AS `Número de compatriotas`
FROM
w3schools.customers AS cus,
w3schools.customers AS cus2
WHERE
cus.Country = cus2.Country
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
