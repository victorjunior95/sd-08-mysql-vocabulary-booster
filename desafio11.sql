-- 11 - Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente
SELECT 
t1.ContactName AS 'Nome',
t1.Country AS 'País',
COUNT(t1.Country = t2.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS t1, w3schools.customers AS t2
WHERE  t1.ContactName <> t2.ContactName AND t1.Country = t2.Country
GROUP BY `Nome`
ORDER BY 1;


-- Error Code: 1140. In aggregated query without GROUP BY, 
-- expression #1 of SELECT list contains nonaggregated column 'w3schools.t1.CustomerName';
-- this is incompatible with sql_mode=only_full_group_by
-- Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'w3schools.t1.CustomerName'; this is incompatible with sql_mode=only_full_group_by
