SELECT
ContactName AS `Nome`,
Country AS `País`,
(
  SELECT
  (COUNT(Country)-1)
  FROM w3schools.customers AS c2
  WHERE c1.Country = c2.Country
  GROUP BY Country
) AS `Número de compatriotas`
FROM w3schools.customers AS c1
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
