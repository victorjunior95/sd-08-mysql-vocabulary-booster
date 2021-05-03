SELECT concat(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
JOB_TITLE AS Cargo,
HIRE_DATE AS 'Data de início do cargo',
DEPARTMENT_ID AS 'Departamento'
FROM hr.jobs
INNER JOIN hr.employees
ON hr.jobs.JOB_ID = hr.employees.JOB_ID 
ORDER BY concat(FIRST_NAME, ' ', LAST_NAME), Cargo;
