SELECT
  UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
  start_date AS 'Data de início',
  salary AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS h ON e.employee_id = h.employee_id
INNER JOIN hr.jobs AS j ON h.job_id = j.job_id
HAVING MONTH(`Data de início`) <= 3
ORDER BY `Nome completo`, `Data de início`;
