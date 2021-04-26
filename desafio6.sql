SELECT
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS "Nome completo",
jobs.JOB_TITLE AS "Cargo",
jobhist.START_DATE AS "Data de início do cargo",
dep.DEPARTMENT_NAME AS "Departamento"
FROM hr.job_history AS jobhist
INNER JOIN hr.employees AS employees
ON employees.EMPLOYEE_ID = jobhist.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = jobhist.JOB_ID
INNER JOIN hr.departments as dep
ON dep.DEPARTMENT_ID = jobhist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
