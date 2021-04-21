SELECT 
    c1.ContactName AS Nome,
    c1.Country AS País,
    IF(co.Total - 1 = 0, 0, co.Total - 1) AS `Número de compatriotas`
FROM
    w3schools.customers AS c1
        LEFT JOIN
    (SELECT 
        c2.Country, COUNT(*) AS Total
    FROM
        w3schools.customers AS c2
    GROUP BY Country) co ON co.Country = c1.Country
ORDER BY Nome;
