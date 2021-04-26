SELECT 
custom1.ContactName AS "Nome",
custom1.Country AS "País",
COUNT(custom1.Country) AS "Número de compatriotas"
FROM w3schools.customers AS custom1
INNER JOIN w3schools.customers AS custom2
ON custom1.Country = custom2.Country
WHERE custom1.CustomerID <> custom2.CustomerID
GROUP BY custom1.Country , custom1.CustomerID
ORDER BY `Nome`;
