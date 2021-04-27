SELECT 
    c.Country as `País`
FROM
    w3schools.customers c 
UNION SELECT 
    s.Country as `País`
FROM
    w3schools.suppliers s order by
    `País` Limit 5;
