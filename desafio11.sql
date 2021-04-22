SELECT
  ContactName AS `Nome`,
  Country AS `País`,
  (SELECT
    Count(Country)
  FROM w3schools.customers AS `compatriots`
  WHERE customers.Country = compatriots.Country) - 1
  AS `Número de compatriotas`
FROM w3schools.customers AS `customers`
ORDER BY `Nome`;
