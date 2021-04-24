SELECT CONCAT(E.FirstName, ' ', E.LastName) AS "Nome completo",
COUNT(*) AS "Total de pedidos"
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON O.EmployeeID = E.EmployeeID
group by O.EmployeeID
ORDER BY `Total de pedidos`;

-- SELECT CONCAT(FirstName, ' ', LastName),
-- (SELECT COUNT(*) FROM w3schools.orders AS O
-- WHERE E.EmployeeID = O.EmployeeID
-- GROUP BY EmployeeID) AS "Total de pedidos"
-- FROM w3schools.employees AS E
-- ORDER BY `Total de pedidos`;
