-- USE w3schools;
-- SELECT 
--     c1.ContactName AS `Nome`,
--     c1.Country AS `País`,
--     COUNT(c2.ContactName) AS `Número de compatriotas`
-- FROM
--     customers AS c1,
--     customers AS c2
-- WHERE
--     c1.Country = c2.Country
--         AND c1.ContactName != c2.ContactName
-- GROUP BY c1.ContactName , c1.Country
-- ORDER BY c1.ContactName
-- ;

SELECT 
  C1.ContactName AS 'Nome',
  C1.Country AS 'País',
  COUNT(C2.ContactName) AS 'Número de compatriotas'
FROM w3schools.customers AS C1, w3schools.customers AS C2
WHERE C1.Country = C2.Country
AND C1.ContactName <> C2.ContactName
GROUP BY C1.ContactName, C1.Country
ORDER BY C1.ContactName
