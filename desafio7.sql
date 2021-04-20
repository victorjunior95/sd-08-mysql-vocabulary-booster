SELECT
CONCAT(UCASE(e.first_name), ' ', UCASE(e.last_name)) AS `Nome completo`,
jh.start_date AS `Data de início`,
e.salary AS Salário
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.employee_id = e.employee_id
WHERE MONTH(jh.start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
