SELECT 
  costumers1.ContactName AS Nome,
  costumers1.Country AS País,
  COUNT(costumers2.Country) AS 'Número de compatriotas'
FROM 
  w3schools.customers AS costumers1, 
  w3schools.customers AS costumers2
WHERE costumers1.Country = costumers2.Country AND costumers1.CustomerID != costumers2.CustomerID
GROUP BY costumers1.CustomerID
ORDER BY Nome;
