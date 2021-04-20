SELECT Country as 'País'
FROM
(
SELECT DISTINCT Country FROM w3schools.customers
UNION
SELECT DISTINCT Country FROM w3schools.suppliers
) AS union_table
ORDER BY Country LIMIT 5;
