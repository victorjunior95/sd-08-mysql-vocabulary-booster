SELECT 
CONCAT(EMP.FirstName, ' ', EMP.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS EMP
ON O.EmployeeID = EMP.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
