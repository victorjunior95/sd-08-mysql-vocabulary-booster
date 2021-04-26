SELECT
  c.ContactName AS `Nome`,
  c.Country AS `País`,
  count(c.Country) As `Número de compatriotas`
FROM customers c
INNER JOIN customers cc
ON c.CustomerID <> cc.CustomerID
AND c.Country = cc.Country
GROUP BY c.CustomerID
ORDER BY `Nome`;
