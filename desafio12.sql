SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo funcionário 1`,
employees.SALARY AS `Salário funcionário 1`,
employees.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(employees2.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo funcionário 2`,
employees2.SALARY AS `Salário funcionário 2`,
employees2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM 
hr.employees AS employees
INNER JOIN
hr.employees AS employees2
USING (JOB_ID)
-- employees.JOB_ID = employees2.JOB_ID
GROUP BY JOB_ID
ORDER BY 
`Nome completo funcionário 1`,
`Nome completo funcionário 2`;

