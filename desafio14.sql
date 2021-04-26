SELECT
  `Países distintos`.Country AS `País`
FROM
  ((SELECT Country FROM w3schools.customers)
  UNION
  (SELECT Country FROM w3schools.suppliers)) AS `Países distintos`
ORDER BY `País`
LIMIT 5;
