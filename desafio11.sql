SELECT 
T1.ContactName Nome,
T1.Country País,
COUNT(T2.Country) `Número de compatriotas`
FROM 
w3schools.customers T1
INNER JOIN
w3schools.customers T2
ON
T1.Country = T2.Country AND
T1.ContactName != T2.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
