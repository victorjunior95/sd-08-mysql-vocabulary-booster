SELECT
  CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
  DATE_FORMAT(START_DATE, '%d/%m/%Y') AS `Data de início`,
  DATE_FORMAT(END_DATE, '%d/%m/%Y') AS `Data de recisão`,
  ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history
JOIN hr.employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
