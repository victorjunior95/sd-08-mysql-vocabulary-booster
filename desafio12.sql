SELECT 
  CONCAT(employees1.first_name, ' ', employees1.last_name) AS `Nome completo funcionário 1`,
  employees1.salary AS `Salário funcionário 1`,
  employees1.phone_number AS `Telefone funcionário 1`,
  CONCAT(employees2.first_name, ' ', employees2.last_name) AS `Nome completo funcionário 2`,
  employees2.salary AS `Salário funcionário 2`,
  employees2.phone_number AS `Telefone funcionário 2`
FROM
  hr.employees AS employees1
INNER JOIN 
  hr.employees AS employees2
ON
  employees1.job_id = employees2.job_id
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY 
  `Nome completo funcionário 1`, 
  `Nome completo funcionário 2`;