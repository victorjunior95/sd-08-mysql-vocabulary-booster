SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo',
employee.HIRE_DATE AS 'Data de início do cargo',
department.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees employee
INNER JOIN hr.jobs job
ON employee.JOB_ID = job.JOB_ID
INNER JOIN hr.departments department
ON employee.DEPARTMENT_ID = department.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, job.JOB_TITLE;
