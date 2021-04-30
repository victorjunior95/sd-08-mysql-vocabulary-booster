SELECT 
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
CONCAT(
IF(DAY(job_history.START_DATE) < 10, CONCAT(0, DAY(job_history.START_DATE)), DAY(job_history.START_DATE)),'/',
IF(MONTH(job_history.START_DATE) < 10, CONCAT(0, MONTH(job_history.START_DATE)), MONTH(job_history.START_DATE)),'/',
YEAR(job_history.START_DATE)) AS `Data de início`,
CONCAT(
IF(DAY(job_history.END_DATE) < 10, CONCAT(0, DAY(job_history.END_DATE)), DAY(job_history.END_DATE)),'/',
IF(MONTH(job_history.END_DATE) < 10, CONCAT(0, MONTH(job_history.END_DATE)), MONTH(job_history.END_DATE)),'/',
YEAR(job_history.END_DATE)) AS `Data de rescisão`,
ROUND((DATEDIFF(job_history.END_DATE, job_history.START_DATE)/365), 2) AS `Anos trabalhados`
FROM hr.job_history AS job_history
INNER JOIN hr.employees AS employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
