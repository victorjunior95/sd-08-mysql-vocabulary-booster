SELECT * FROM w3schools.customers;
SELECT
t1.ContactName AS "Nome",
t1.Country AS "País",
(COUNT(*) - 1) AS `Número de compatriotas` -- Não pode contar a pessoa!
FROM  w3schools.customers AS t1, w3schools.customers AS t2
WHERE t1.Country = t2.Country
-- AND t1.ContactName <> t2.ContactName
GROUP BY t1.ContactName, t1.Country
ORDER BY 1;
