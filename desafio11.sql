SELECT ContactName AS Nome,
Country AS País,
COUNT(Country) -1 AS 'Número de compatriotas'
FROM w3schools.customers
GROUP BY Country, ContactName
ORDER BY Nome;
