SELECT 
    A.ContactName AS 'Nome',
    A.Country AS 'País',
    COUNT(*) AS 'Número de compatriotas'
FROM
    w3schools.customers A
        JOIN
    w3schools.customers B ON A.Country = B.Country
        AND A.CustomerID <> B.CustomerID
GROUP BY A.ContactName , A.Country
ORDER BY A.ContactName;
