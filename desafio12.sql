SELECT
  CONCAT(employee1.FIRST_NAME, ' ', employee1.LAST_NAME) AS `Nome completo funcionário 1`,
  employee1.SALARY AS `Salário funcionário 1`,
  employee1.PHONE_NUMBER AS `Telefone funcionário 1`,
  CONCAT(employee2.FIRST_NAME, ' ', employee2.LAST_NAME) AS `Nome completo funcionário 2`,
  employee2.SALARY AS `Salário funcionário 2`,
  employee2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS `employee1`
INNER JOIN hr.employees AS `employee2`
ON employee1.JOB_ID = employee2.JOB_ID
WHERE employee1.EMPLOYEE_ID <> employee2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;