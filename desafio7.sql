SELECT UCASE(CONCAT(Employees.first_name, ' ', Employees.last_name)) AS 'Nome completo',
Job_History.start_date AS 'Data de início',
Employees.salary AS 'Salário'
FROM hr.employees AS Employees
INNER JOIN hr.job_history AS Job_History ON Employees.employee_id = Job_History.employee_id
INNER JOIN hr.jobs AS Jobs ON Job_History.job_id = Jobs.job_id
WHERE MONTH(Job_History.start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
