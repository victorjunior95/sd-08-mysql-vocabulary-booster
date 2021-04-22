SELECT
t1.ContactName AS "Nome",
t1.Country AS "País",
COUNT(t2.ContactName) AS `Número de compatriotas` -- Não pode contar a pessoa!
FROM  w3schools.customers AS t1, w3schools.customers AS t2
WHERE t1.Country = t2.Country
AND t1.ContactName <> t2.ContactName
GROUP BY t1.ContactName, t1.Country 
-- (usar os dois pois dava problema de agregação)
ORDER BY 1;
