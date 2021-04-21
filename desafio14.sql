SELECT
u.Country AS `País`
FROM (
SELECT DISTINCT c.Country FROM w3schools.customers AS c
UNION 
SELECT DISTINCT s.Country FROM w3schools.suppliers AS s
) AS u
ORDER BY `País` LIMIT 5;
