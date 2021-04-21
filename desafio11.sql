SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.orders;
SELECT * FROM w3schools.shippers;
SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.order_details;
SELECT * FROM w3schools.products;

SELECT
c.ContactName AS `Nome`,
c.Country AS `País`,
(
SELECT COUNT(*) -1
FROM w3schools.customers AS c1
GROUP BY c1.Country
HAVING c1.Country = c.Country
) AS `Número de compatriotas`
FROM w3schools.customers AS c
WHERE
(
SELECT COUNT(*) -1
FROM w3schools.customers AS c1
GROUP BY c1.Country
HAVING c1.Country = c.Country
) <> 0
ORDER BY `Nome`;
