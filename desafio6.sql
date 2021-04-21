SELECT CONCAT(hrEmployees.FIRST_NAME, ' ', hrEmployees.LAST_NAME) AS 'Nome completo',
hrJobs.JOB_TITLE AS 'Cargo',
employeesHistory.START_DATE AS 'Data de início do cargo',
department.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS hrEmployees
INNER JOIN hr.job_history AS employeesHistory
ON hrEmployees.EMPLOYEE_ID = employeesHistory.EMPLOYEE_ID
INNER JOIN hr.jobs AS hrJobs
ON hrJobs.JOB_ID = employeesHistory.JOB_ID
INNER JOIN hr.departments AS department
ON department.DEPARTMENT_ID = employeesHistory.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, hrJobs.JOB_TITLE;
