SELECT 
customers.ContactName AS `Nome`,
customers.Country AS `País`,
COUNT(customers2.Country) AS `Número de compatriotas`
FROM 
w3schools.customers AS customers,
w3schools.customers AS customers2
WHERE
customers.CustomerID <> customers2.CustomerID AND
customers.Country = customers2.Country
GROUP BY customers.CustomerID
ORDER BY customers.ContactName;
