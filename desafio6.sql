SELECT
CONCAT( f.first_name, ' ', f.last_name) AS 'Nome completo',
h.job_title AS 'Cargo',
c.start_date AS 'Data de início do cargo',
g.department_name AS 'Departamento'
FROM hr.job_history c
INNER JOIN hr.employees f ON c.employee_id = f.employee_id
INNER JOIN hr.departments g ON c.department_id = g.department_id
INNER JOIN hr.jobs h ON c.job_id = h.job_id
ORDER BY `Nome completo` DESC, `Cargo`;
