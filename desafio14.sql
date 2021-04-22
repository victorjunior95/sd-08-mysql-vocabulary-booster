-- USE w3schools;
-- SELECT 
--     Country AS `País`
-- FROM
--     customers 
-- UNION SELECT 
--     Country
-- FROM
--     suppliers
-- ORDER BY `País`
-- LIMIT 5
-- ;

SELECT Country as 'País' FROM (
  SELECT Country FROM w3schools.customers
  UNION
  SELECT Country FROM w3schools.suppliers
) AS Países
ORDER BY `País`
LIMIT 5;
