SELECT CONCAT(Employees.first_name, ' ', Employees.last_name) AS 'Nome completo',
DATE_FORMAT(Job_History.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(Job_History.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(end_date, start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees Employees
INNER JOIN hr.job_history AS Job_History ON Employees.EMPLOYEE_ID = Job_History.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
