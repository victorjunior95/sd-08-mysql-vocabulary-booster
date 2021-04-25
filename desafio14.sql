(SELECT Country 'País' FROM w3schools.customers)
UNION
(SELECT Country 'País' FROM w3schools.suppliers)
ORDER BY `País`
LIMIT 5;
