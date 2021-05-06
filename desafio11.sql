SELECT
  c1.CustomerName AS Nome,
  c1.Country AS País,
  COUNT(c1.Country) AS `Número de compatriotas`
FROM w3schools.customers AS c1
INNER JOIN w3schools.customers AS c2
ON c1.CustomerName <> c2.CustomerName
AND c1.Country = c2.Country 
GROUP BY  c1.CustomerName, c1.Country
ORDER BY `Nome`;
