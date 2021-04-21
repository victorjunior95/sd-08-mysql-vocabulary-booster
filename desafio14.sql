SELECT
  DISTINCT c.Country AS 'País'
FROM w3schools.customers c
UNION
SELECT
  DISTINCT s.Country
FROM w3schools.suppliers s
ORDER BY `País` LIMIT 5;
