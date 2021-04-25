
SELECT
  ContactName AS Nome,
  a.Country AS País,
  (CountryCount - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS a
INNER JOIN (
  SELECT Country, COUNT(Country) AS CountryCount
  FROM w3schools.customers
  GROUP BY Country
) AS b
ON a.Country = b.Country
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
