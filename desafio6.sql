SELECT CONCAT(employ.first_name, ' ', employ.last_name) AS `Nome completo`, jobs.job_title AS `Cargo`,
jhistory.start_date AS `Data de início do cargo`, depart.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees employ
INNER JOIN hr.job_history jhistory
ON employ.employee_id = jhistory.employee_id
INNER JOIN hr.jobs jobs
ON jhistory.job_id = jobs.job_id
INNER JOIN hr.departments depart
ON jhistory.department_id = depart.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
