SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
job.JOB_TITLE AS `Cargo`,
jhis.START_DATE AS `Data de início do cargo`, 
dep.DEPARTMENT_NAME AS `DEPARTAMENTO`
FROM 
hr.employees AS emp,
hr.jobs AS job,
hr.job_history AS jhis,
hr.departments AS dep
WHERE
job.JOB_ID = jhis.JOB_ID
AND
emp.EMPLOYEE_ID = jhis.EMPLOYEE_ID
AND
dep.DEPARTMENT_ID = jhis.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
