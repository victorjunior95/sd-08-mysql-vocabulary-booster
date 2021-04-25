SELECT 
sub.`Name` AS 'Nome completo',
sub.`countEmployee` AS 'Total de pedidos'  
FROM(
SELECT  count(o.EmployeeID) AS 'countEmployee',  CONCAT(e.FirstName, " ", e.LastName) AS 'Name' FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS e
ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID 
HAVING ( `countEmployee` > 1)
) AS sub 
ORDER BY 2;
