SELECT CONCAT(e.firstname, ' ', e.lastname) AS `Nome completo`, COUNT(o.orderid) AS `Total de pedidos`
FROM w3schools.employees e
INNER JOIN w3schools.orders o ON e.employeeid = o.employeeid
GROUP BY e.employeeid
ORDER BY `Total de pedidos`;
