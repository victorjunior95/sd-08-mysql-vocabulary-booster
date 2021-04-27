SELECT COUNTRY AS País FROM w3schools.suppliers
UNION
SELECT COUNTRY AS País FROM w3schools.customers
ORDER BY 1
LIMIT 5;
