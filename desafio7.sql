SELECT
  UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
  START_DATE AS `Data de início`,
  SALARY AS `Salary`
FROM hr.job_history
JOIN hr.employees
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
