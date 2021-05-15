SELECT
  ContactName AS Nome,
  Country AS País,
  (
    SELECT
    COUNT(*) - 1
    FROM w3schools.customers AS current
    WHERE customers.Country = current.Country
  ) AS `Número de compatriotas`
FROM w3schools.customers AS customers
ORDER BY Nome;
