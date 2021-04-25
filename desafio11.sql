-- https://www.w3schools.com/sql/sql_join_self.asp
SELECT 
    CN.contactName AS 'Nome',
    C.country AS 'País',
    COUNT(CN.country = C.country) AS 'Número de compatriotas'
FROM
    w3schools.customers CN,
    w3schools.customers C
WHERE
    CN.contactName <> C.contactName
        AND CN.country = C.country
GROUP BY `Nome` , `País`
ORDER BY `Nome`;
