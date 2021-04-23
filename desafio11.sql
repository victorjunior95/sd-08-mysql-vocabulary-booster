SELECT 
a.CustomerName AS 'Nome',
a.Country AS 'País',
b.`total` - 1 AS 'Número de compatriotas'
FROM w3schools.customers a
INNER JOIN 
(SELECT Country, COUNT(*) AS 'total'
FROM w3schools.customers 
GROUP BY Country) b ON a.Country = b.Country
ORDER BY a.CustomerName;
