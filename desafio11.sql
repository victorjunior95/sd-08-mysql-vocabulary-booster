SELECT 
    c1.contactName AS 'Nome',
    c1.country AS 'País',
    COUNT(c2.country) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS c1
        INNER JOIN
    w3schools.customers AS c2 ON c1.Country = c2.Country
GROUP BY c1.ContactName , c1.Country
HAVING `Número de compatriotas`
ORDER BY 1;
