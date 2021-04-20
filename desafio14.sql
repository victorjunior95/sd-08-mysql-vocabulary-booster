SELECT 
    X.País
FROM
    (SELECT 
        A.Country AS 'País'
    FROM
        w3schools.customers A UNION SELECT 
        A.Country AS 'País'
    FROM
        w3schools.suppliers A) X
ORDER BY X.País
LIMIT 5;
