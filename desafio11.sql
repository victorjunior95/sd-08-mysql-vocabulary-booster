SELECT
  c1.ContactName AS `Nome`,
  c1.Country AS `País`,
  (
    SELECT COUNT(c2.Country)
    FROM w3schools.customers AS c2
    WHERE c2.Country = c1.Country AND
    c2.CustomerID <> c1.CustomerID
  ) AS `Número de compatriotas`
FROM w3schools.customers AS c1
WHERE EXISTS (
  SELECT *
  FROM w3schools.customers AS c2
  WHERE c2.Country = c1.Country AND
  c2.CustomerID <> c1.CustomerID
)
ORDER BY `Nome`;
