SELECT 
    Country AS 'País'
FROM
    (SELECT 
        Country
    FROM
        w3schools.customers UNION SELECT 
        Country
    FROM
        w3schools.suppliers) AS Países
ORDER BY 1
LIMIT 5;
