SELECT cus1.ContactName AS 'Nome',
    cus1.Country AS 'País',
    COUNT(cus2.ContactName) AS 'Número de compatriotas'
FROM w3schools.customers AS cus1,
    w3schools.customers AS cus2
WHERE cus1.Country = cus2.Country
    AND cus1.ContactName <> cus2.ContactName
GROUP BY `Nome`,
    `País`
ORDER BY `Nome`;
