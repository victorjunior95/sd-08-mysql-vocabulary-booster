(SELECT DISTINCT customers.Country AS 'País' FROM w3schools.customers ORDER BY `País`  LIMIT 5)
UNION ALL
(SELECT DISTINCT suppliers.Country AS 'País' FROM w3schools.suppliers ORDER BY `País` LIMIT 5)
ORDER BY `País` 
LIMIT 5;
