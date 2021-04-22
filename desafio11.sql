SELECT A.contactName AS `Nome`, A.country AS `País`, COUNT(A.contactName) AS `Número de compatriotas`
FROM w3schools.customers A, w3schools.customers B
WHERE A.contactName <> B.contactName AND A.country = B.country
GROUP BY A.contactName, A.country
ORDER BY `Nome`;
