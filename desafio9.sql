SELECT
    CONCAT(tb_emply.FirstName,
            ' ',
            tb_emply.LastName) AS 'Nome completo',
    COUNT(tb_ord.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.employees AS tb_emply
        INNER JOIN
    w3schools.orders AS tb_ord ON tb_emply.EmployeeID = tb_ord.EmployeeID
GROUP BY CONCAT(tb_emply.FirstName,
        ' ',
        tb_emply.LastName)
ORDER BY COUNT(tb_ord.EmployeeID) ASC;
