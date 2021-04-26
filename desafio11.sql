/* -- Desafio11.SQL */

SELECT
tbC1.ContactName 'Nome',
tbC1.Country 'País',
COUNT(tbC1.ContactName) 'Número de compatriotas'
FROM w3schools.customers tbC1
INNER JOIN w3schools.customers tbC2
ON tbC1.Country = tbC2.Country
AND tbC1.CustomerID <> tbC2.CustomerID
GROUP BY tbC1.Country, tbC1.CustomerID
ORDER BY tbC1.ContactName ASC;
