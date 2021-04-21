USE w3schools;
SELECT 
    CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome Completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    employees AS emp
        INNER JOIN
    orders AS o
WHERE
    EXISTS( SELECT 
            *
        FROM
            employees
        WHERE
            emp.employeeID = o.EmployeeID)
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`
;
