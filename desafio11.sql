SELECT
  c1.CustomerName AS "Nome",
  c1.Country AS "Páis",
  COUNT(c1.Country) AS "Número de compatriotas"
FROM w3schools.customers AS c1
INNER JOIN w3schools.customers AS c2
ON c1.Country = c2.Country
AND c1.CustomerID <> c2.CustomerID
GROUP BY c1.CustomerID
ORDER BY `Nome`;
