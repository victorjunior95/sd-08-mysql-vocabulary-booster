SELECT c.ContactName AS `Nome`, c.Country AS `País`, t.Total AS `Número de compatriotas`
FROM w3schools.customers AS c
INNER JOIN 
(
SELECT Country, COUNT(Country) - 1 AS `Total`
FROM w3schools.customers
GROUP BY Country
) AS t
ON t.Country = c.Country
WHERE t.Total <> 0
ORDER BY `Nome`;
