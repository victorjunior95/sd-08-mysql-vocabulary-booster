SELECT
  c1.ContactName 'Nome',
  c1.Country 'País',
  COUNT(c2.ContactName) `Número de compatriotas`
FROM w3schools.customers c1, w3schools.customers c2
WHERE c2.Country = c1.Country
AND c1.ContactName <> c2.ContactName
GROUP BY c1.ContactName, c1.Country
ORDER BY `Nome`;
