SELECT
    t1.ContactName AS 'Nome',
    t2.Country AS 'País',
    (COUNT(t2.Country) - 1) AS 'Número de compatriotas'
FROM
    w3schools.customers AS t1,
    w3schools.customers AS t2
WHERE
    t1.Country = t2.Country
GROUP BY t2.ContactName
ORDER BY t2.ContactName;
