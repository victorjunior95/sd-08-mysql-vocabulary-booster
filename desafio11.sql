WITH co AS (
SELECT 
    c2.Country, COUNT(*) AS Total
FROM
    w3schools.customers AS c2
GROUP BY Country
)

SELECT 
    c1.ContactName AS Nome,
    c1.Country AS País,
    co.Total - 1 AS `Número de compatriotas`
FROM
    w3schools.customers AS c1
        LEFT JOIN
    co ON co.Country = c1.Country
ORDER BY Nome;
