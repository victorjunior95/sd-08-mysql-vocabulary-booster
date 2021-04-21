SELECT 
    (SELECT 
            CONCAT(e.FirstName, ' ', e.LastName)
        FROM
            w3schools.employees e
        WHERE
            e.EmployeeID = o.EmployeeID) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    w3schools.orders o
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
