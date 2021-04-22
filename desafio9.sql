-- USE w3schools;
-- SELECT 
--     CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome Completo`,
--     COUNT(*) AS `Total de pedidos`
-- FROM
--     employees AS emp
--         INNER JOIN
--     orders AS o
-- WHERE
--     EXISTS( SELECT 
--             *
--         FROM
--             employees
--         WHERE
--             emp.employeeID = o.EmployeeID)
-- GROUP BY `Nome Completo`
-- ORDER BY `Total de pedidos`
-- ;

SELECT
  CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E
ON O.EmployeeID = E.EmployeeID
WHERE EXISTS (
  SELECT * FROM w3schools.employees
  WHERE O.EmployeeID = E.EmployeeID
)
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
