SELECT
  UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
  job_history.START_DATE AS `Data de início`,
  employees.SALARY AS `Salário`
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, DATE(`Data de início`);
