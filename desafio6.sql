SELECT CONCAT(Employees.FIRST_NAME, ' ', Employees.LAST_NAME) AS `Nome completo`, Jobs.JOB_TITLE AS `Cargo`,
Jobs_history.START_DATE AS `Data de início do cargo`, Departments.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS `Employees`
INNER JOIN hr.job_history AS `Jobs_history`
ON Employees.EMPLOYEE_ID = Jobs_history.EMPLOYEE_ID
INNER JOIN hr.jobs AS `Jobs`
ON Jobs_history.JOB_ID = Jobs.JOB_ID
INNER JOIN hr.departments AS `Departments`
ON Jobs_history.DEPARTMENT_ID = Departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
