SELECT CUSTOMERS.ContactName AS "Nome",
CUSTOMERS.Country as "País",
-- https://stackoverflow.com/questions/16707780/count-how-many-rows-have-the-same-value
(SELECT COUNT(*) - 1 FROM w3schools.customers WHERE Country = CUSTOMERS.Country) AS `Número de compatriotas`
FROM w3schools.customers AS CUSTOMERS
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
