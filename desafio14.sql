(SELECT DISTINCT Country AS `País` FROM w3schools.customers
ORDER BY Country
LIMIT 5)
UNION ALL
(SELECT DISTINCT Country AS `País` FROM w3schools.suppliers
ORDER BY Country
LIMIT 5)
ORDER BY `País`
LIMIT 5;
