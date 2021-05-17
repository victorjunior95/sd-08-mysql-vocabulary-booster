SELECT
  ContactName AS Nome,
  Country AS País,
  (
    SELECT
      COUNT(*) - 1
    FROM w3schools.customers AS current
    WHERE customers.Country = current.Country
  ) AS `Número de compatriotas`
FROM customers
WHERE (
    SELECT
      COUNT(*) - 1
    FROM w3schools.customers AS current
    WHERE customers.Country = current.Country
  ) > 0
ORDER BY Nome;
