SELECT t1.contactname AS Nome, t1.country AS País, COUNT(t2.contactname) - 1 AS `Número de compatriotas`
FROM w3schools.customers as t1, w3schools.customers AS t2
WHERE t1.country = t2.country
GROUP BY t1.customerid 
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
