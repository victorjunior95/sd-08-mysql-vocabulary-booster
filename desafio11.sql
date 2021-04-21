SELECT T1.ContactName AS Nome,
T2.Country AS País,
COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS T1, w3schools.customers AS T2
WHERE T1.CustomerID <> T2.CustomerID AND T1.Country = T2.Country
GROUP BY T1.ContactName, T2.Country
ORDER BY T1.ContactName;
