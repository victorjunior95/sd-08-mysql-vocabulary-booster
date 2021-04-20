SELECT CONCAT(e.FIRST_NAME,' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`,
jhis.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jhis ON e.EMPLOYEE_ID = jhis.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON jhis.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d ON jhis.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`; 
