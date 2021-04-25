SELECT
  CONCAT(a.FirstName, ' ', a.LastName) AS `Nome completo`,
  COUNT(*) AS `Total de pedidos`
FROM
  w3schools.orders AS b
  INNER JOIN w3schools.employees AS a ON b.EmployeeID = a.EmployeeID
WHERE
  EXISTS (
    SELECT
      *
    FROM
      w3schools.employees
    WHERE
      b.EmployeeID = a.EmployeeID
  )
GROUP BY
  `Nome completo`
ORDER BY
  `Total de pedidos`;
