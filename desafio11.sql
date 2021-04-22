SELECT Customers_1.ContactName AS Nome,
Customers_1.Country AS 'País',
COUNT(Customers_1.Country) AS `Número de compatriotas`
FROM w3schools.customers AS Customers_1
INNER JOIN w3schools.customers AS Customers_2 ON Customers_1.Country = Customers_2.Country
AND Customers_1.CustomerID <> Customers_2.CustomerID
GROUP BY Customers_1.Country, Customers_1.CustomerID
ORDER BY Nome;
