SELECT
  c2.ContactName AS 'Nome',
  c2.Country AS 'País',
  COUNT(*) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.Country = c2.Country
GROUP BY c2.ContactName
ORDER BY `Nome`;
