SELECT CONCAT(employ.firstname, ' ', employ.lastname) AS `Nome completo`, COUNT(*) AS `Total de pedidos`
FROM w3schools.employees employ
INNER JOIN w3schools.orders ord
ON employ.EmployeeID = ord.EmployeeID
GROUP BY employ.employeeID;
