SELECT CONCAT(Employees.first_name, ' ', Employees.last_name) AS 'Nome completo',
Jobs.job_title AS Cargo,
Job_History.start_date AS 'Data de início do cargo',
Departments.department_name AS 'Departamento'
FROM hr.employees AS Employees
INNER JOIN hr.job_history AS Job_History ON Employees.employee_id = Job_History.employee_id
INNER JOIN hr.jobs AS Jobs ON Job_History.job_id = Jobs.job_id
INNER JOIN hr.departments AS Departments ON Job_History.department_id = Departments.department_id
ORDER BY `Nome completo` DESC, Cargo;
