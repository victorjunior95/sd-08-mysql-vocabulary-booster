SELECT Country País from w3schools.customers
UNION
SELECT Country País from w3schools.suppliers
ORDER BY País
LIMIT 5;
