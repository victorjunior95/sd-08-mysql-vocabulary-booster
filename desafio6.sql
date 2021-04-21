-- SELECT * FROM hr.departments;
-- SELECT * FROM hr.job_history;

SELECT
CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS `Nome completo`,
job.JOB_TITLE AS "Cargo",
jhistory.START_DATE AS `Data de início do cargo`,
dep.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS employee
INNER JOIN hr.jobs AS job
ON job.JOB_ID = employee.JOB_ID
INNER JOIN hr.job_history AS jhistory
ON employee.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON employee.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
