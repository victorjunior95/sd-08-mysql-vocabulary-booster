SELECT
  CONCAT(employee_one.FIRST_NAME, ' ', employee_one.LAST_NAME) AS `Nome completo funcionário 1`,
  employee_one.SALARY AS `Salário funcionário 1`,
  employee_one.PHONE_NUMBER AS `Telefone funcionário 1`,
  CONCAT(employee_two.FIRST_NAME, ' ', employee_two.LAST_NAME) AS `Nome completo funcionário 2`,
  employee_two.SALARY AS `Salário funcionário 2`,
  employee_two.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS employee_one
INNER JOIN hr.employees AS employee_two
ON employee_one.JOB_ID = employee_two.JOB_ID
WHERE employee_one.EMPLOYEE_ID <> employee_two.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
