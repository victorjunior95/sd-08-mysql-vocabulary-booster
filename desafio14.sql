SELECT DISTINCT(suppliers.Country) AS `País` FROM w3schools.suppliers
UNION
SELECT DISTINCT(customers.Country) AS País FROM w3schools.customers
ORDER BY 1
LIMIT 5;
