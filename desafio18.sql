SELECT 
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(hist.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(hist.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(hist.END_DATE, hist.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS hist
ON employees.EMPLOYEE_ID = hist.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
