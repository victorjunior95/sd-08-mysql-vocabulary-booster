SELECT
  CONCAT(first_name, ' ', last_name) AS 'Nome completo',
  job_title AS Cargo,
  start_date AS 'Data de início do cargo',
  department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history AS h ON e.employee_id = h.employee_id
INNER JOIN hr.jobs AS j ON h.job_id = j.job_id
INNER JOIN hr.departments AS d ON h.department_id = d.department_id
ORDER BY `Nome completo` DESC, Cargo;
