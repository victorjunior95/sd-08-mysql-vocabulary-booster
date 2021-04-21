(SELECT Country AS 'País' FROM w3schools.customers ORDER BY `País`)
UNION
(SELECT Country AS 'País' FROM w3schools.suppliers ORDER BY `País`)
ORDER BY `País` LIMIT 5;
