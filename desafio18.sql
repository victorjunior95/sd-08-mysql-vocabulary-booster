SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jhistory.START_DATE,'%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jhistory.END_DATE,'%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jhistory.END_DATE, jhistory.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS jhistory
INNER JOIN hr.employees AS employee
ON jhistory.EMPLOYEE_ID = employee.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;