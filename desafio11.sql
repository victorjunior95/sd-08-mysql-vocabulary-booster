SELECT customer1.ContactName AS 'Nome',
customer1.Country AS 'País',
COUNT(customer2.ContactName) AS 'Número de compatriotas'
FROM w3schools.customers AS customer1, w3schools.customers AS customer2
WHERE customer1.ContactName <> customer2.ContactName
AND customer1.Country = customer2.Country
GROUP BY customer1.ContactName, customer1.Country
ORDER BY customer1.ContactName;
