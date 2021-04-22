SELECT CONCAT(EMP.FirstName, ' ', EMP.LastName) AS 'Nome completo',
count(1) AS 'Total de pedidos'
FROM w3schools.orders AS ORD
INNER JOIN w3schools.employees AS EMP ON ORD.employeeid = EMP.employeeid
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
