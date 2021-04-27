SELECT ct1.contactName AS `Nome`,
ct1.Country AS `País`,
COUNT(ct1.country) AS `Número de compatriotas`
FROM w3schools.customers AS `ct1`,
w3schools.customers AS `ct2`
WHERE ct1.Country = ct2.country and ct1.CustomerID <> ct2.CustomerID
GROUP BY ct1.customerid
ORDER BY `Nome`;
