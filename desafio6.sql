SELECT 
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS `Cargo`,
jobshistory.START_DATE AS `Data de início do cargo`,
departments.DEPARTMENT_NAME AS `Departamento`
FROM 
hr.departments AS departments,
hr.job_history AS jobshistory,
hr.jobs AS jobs,
hr.employees AS employees
WHERE 
jobs.JOB_ID = jobshistory.JOB_ID AND
employees.EMPLOYEE_ID = jobshistory.EMPLOYEE_ID AND
departments.DEPARTMENT_ID = jobshistory.DEPARTMENT_ID 
ORDER BY `Nome completo` DESC, `Cargo`;
