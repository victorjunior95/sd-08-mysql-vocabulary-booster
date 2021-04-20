SELECT CONCAT(employ.first_name, ' ', employ.last_name) AS `Nome completo`, jobs.job_title AS `Cargo`,
employ.hire_date AS `Data de início do cargo`, depart.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees employ
INNER JOIN hr.jobs jobs
ON employ.job_id = jobs.job_id
INNER JOIN hr.departments depart
ON employ.department_id = depart.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
