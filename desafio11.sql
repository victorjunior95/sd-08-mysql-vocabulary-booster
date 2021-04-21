SELECT 
    c1.ContactName AS Nome,
    c1.Country AS País,
    co.Total - 1 AS `Número de compatriotas`
FROM
    w3schools.customers AS c1
        LEFT JOIN
    (SELECT 
        c2.Country, COUNT(*) AS Total
    FROM
        w3schools.customers AS c2
    GROUP BY Country) co ON co.Country = c1.Country
    HAVING `Número de compatriotas` <> 0
ORDER BY Nome;
