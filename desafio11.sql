SELECT
    A.ContactName AS 'Nome',
    A.Country AS 'País',
    COUNT(B.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS A,
    w3schools.customers AS B
WHERE
    A.Country = B.Country
        AND A.CustomerID <> B.CustomerID
GROUP BY A.ContactName , A.Country
ORDER BY `Nome`;
