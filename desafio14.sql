SELECT 
    c.Country AS `País`
FROM
    w3schools.customers AS c,
    w3schools.suppliers AS s
WHERE
    c.Country <> s.Country
GROUP BY `País`
ORDER BY `País`
LIMIT 5;
