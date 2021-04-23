SELECT
  c1.ContactName AS `Nome`,
  c1.Country AS `País`,
  (
    SELECT COUNT(c2.Country) - 1 FROM w3schools.customers AS c2
    WHERE c2.Country = c1.Country
  ) AS `Número de compatriotas`
FROM w3schools.customers AS c1
ORDER BY `Nome`;
