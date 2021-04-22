SELECT (
  SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
  FROM hr.employees
  WHERE EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
) AS `Nome completo`,
DATE_FORMAT(START_DATE, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
ROUND((DATEDIFF(END_DATE, START_DATE) / 365), 2) AS `Anos trabalhados`
FROM hr.job_history
ORDER BY `Nome completo`, `Anos trabalhados` LIMIT 10 OFFSET 1;
