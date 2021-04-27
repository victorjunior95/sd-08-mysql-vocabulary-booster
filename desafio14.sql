/* -- Desafio14.SQL */

SELECT Country 'País'
FROM
(SELECT Country FROM w3schools.customers
UNION
SELECT Country FROM w3schools.suppliers) País
ORDER BY Country
LIMIT 5;
