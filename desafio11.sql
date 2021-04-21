SELECT
mesmaTabela1.ContactName AS Nome,
mesmaTabela1.Country AS País,
COUNT(mesmaTabela1.Country) AS `Número de compatriotas`
FROM w3schools.customers AS mesmaTabela1
INNER JOIN w3schools.customers AS mesmaTabela2
ON mesmaTabela1.Country = mesmaTabela2.Country AND mesmaTabela1.CustomerID <> mesmaTabela2.CustomerID
GROUP BY mesmaTabela1.Country, mesmaTabela1.CustomerID
ORDER BY Nome;
