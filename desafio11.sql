SELECT T1.`ContactName` AS `Nome`,
T1.`Country` AS `País`,
(
SELECT COUNT(*) - 1 
FROM w3schools.customers AS T2 
GROUP BY T2.`Country` 
HAVING T2.`Country` = T1.`Country` 
) AS `Número de compatriotas`
FROM w3schools.customers AS T1
WHERE (
SELECT COUNT(*) - 1 
FROM w3schools.customers AS T2 
GROUP BY T2.`Country` 
HAVING T2.`Country` = T1.`Country` 
) <> 0
ORDER BY `Nome`;
