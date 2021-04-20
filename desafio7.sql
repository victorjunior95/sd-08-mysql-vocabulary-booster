SELECT CONCAT(UCASE(first_name), ' ', UCASE(last_name)) AS `Nome completo`,
e.salary AS `Salário`,
jhist.start_date AS `Data de início`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jhist
ON e.employee_id = jhist.employee_id
WHERE MONTH(jhist.start_date) IN (01, 02, 03)
ORDER BY `Nome Completo`, `Data de início`;
