SELECT
CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS `Nome completo`,
/* https://www.w3schools.com/sql/func_mysql_date_format.asp 
A função DATE_FORMAT () formata uma data conforme especificado.  */
DATE_FORMAT(job.START_DATE, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(job.END_DATE, '%d/%m/%Y') AS `Data de rescisão`, -- Coloquei as datas iguais
ROUND(DATEDIFF(job.END_DATE, job.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.employees AS employee
INNER JOIN hr.job_history AS job
ON job.EMPLOYEE_ID = employee.EMPLOYEE_ID
ORDER BY 1, 4;
