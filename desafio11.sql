SELECT ContactName AS 'Nome', Country AS 'País',
(	
  SELECT COUNT(*) - 1
        FROM w3schools.customers AS tc2
        GROUP BY tc2.Country
        HAVING tc2.Country = tc.Country
) AS 'Número de compatriotas'
FROM w3schools.customers AS tc
WHERE (	
  SELECT COUNT(*) - 1
    FROM w3schools.customers AS tc2
    GROUP BY tc2.Country
    HAVING tc2.Country = tc.Country
) <> 0
ORDER BY ContactName;
