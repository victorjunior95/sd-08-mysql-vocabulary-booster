SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.job_title AS `Cargo`,
jhist.start_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jhist
ON e.employee_id = jhist.employee_id
INNER JOIN hr.jobs AS j
ON jhist.job_id = j.job_id
INNER JOIN hr.departments as d
ON jhist.department_id = d.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
