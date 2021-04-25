/* -- Desafio9.SQL */

SELECT CONCAT(tbE.FIRSTNAME, ' ', tbE.LASTNAME) 'Nome completo',
COUNT(*) 'Total de pedidos'
FROM w3schools.employees tbE
INNER JOIN w3schools.orders tbO
ON tbE.EmployeeID = tbO.EmployeeID
GROUP BY CONCAT(tbE.FIRSTNAME, ' ', tbE.LASTNAME)
ORDER BY COUNT(*);
