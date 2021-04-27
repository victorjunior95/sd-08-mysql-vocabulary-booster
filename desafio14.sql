SELECT distinct Country AS 'País' FROM w3schools.customers 
UNION 
SELECT distinct Country AS 'País' FROM w3schools.suppliers
ORDER BY 1 LIMIT 5;
