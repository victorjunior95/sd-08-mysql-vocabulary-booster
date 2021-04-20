SELECT CONCAT(first_name, ' ', last_name) AS `Nome completo`,
j.job_title AS Cargo,
jh.start_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.employee_id = jh.employee_id
INNER JOIN hr.jobs AS j
ON jh.job_id = j.job_id
INNER JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.department_id
ORDER BY `Nome completo` DESC, Cargo ASC;
