SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo',
jhistory.START_DATE AS 'Data de início do cargo',
department.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history jhistory 
INNER JOIN hr.jobs job
ON jhistory.JOB_ID = job.JOB_ID
INNER JOIN hr.employees employee
ON jhistory.EMPLOYEE_ID = employee.EMPLOYEE_ID
INNER JOIN hr.departments department
ON jhistory.DEPARTMENT_ID = department.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, job.JOB_TITLE;
