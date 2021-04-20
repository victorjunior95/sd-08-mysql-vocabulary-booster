SELECT 
    A.ContactName AS 'Nome',
    A.Country AS 'País',
    (SELECT 
            COUNT(T0.ContactName)
        FROM
            w3schools.customers T0
        WHERE
            T0.Country = A.Country
                AND A.ContactName <> T0.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers A
GROUP BY A.ContactName , A.Country
ORDER BY A.ContactName;
