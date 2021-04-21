USE w3schools;
SELECT 
    c1.ContactName AS `Nome`,
    c1.Country AS `País`,
    COUNT(c2.ContactName) AS `Número de compatriotas`
FROM
    customers AS c1,
    customers AS c2
WHERE
    c1.Country = c2.Country
        AND c1.ContactName != c2.ContactName
GROUP BY c1.ContactName, c1.Country
ORDER BY c1.ContactName
;
