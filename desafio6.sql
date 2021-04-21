SELECT CONCAT(first_name, ' ', last_name) AS `Nome completo`, 
job_title AS `Cargo`, hire_date AS `Data de início do cargo`,
department_name AS `Departamento`
FROM hr.employees a 
INNER JOIN hr.jobs b ON a.job_id = b.job_id 
INNER JOIN hr.departments c ON a.department_id = c.department_id 
ORDER BY `Nome completo` DESC, `Cargo` ASC;
