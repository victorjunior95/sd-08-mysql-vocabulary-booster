SELECT CUS.contactName AS 'Nome', CT.country AS 'País', COUNT(CUS.country = CT.country) AS 'Número de compatriotas'
FROM w3schools.customers AS CUS,  w3schools.customers AS  CT
WHERE CUS.contactName <> CT.contactName  AND CUS.country = CT.country
GROUP BY `Nome` , `País`
ORDER BY `Nome`;
