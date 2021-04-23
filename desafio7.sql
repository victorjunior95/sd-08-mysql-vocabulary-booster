SELECT
UCASE(CONCAT( f.first_name, ' ', f.last_name)) AS 'Nome completo',
c.start_date AS 'Data de início',
f.salary AS 'Salário'
FROM hr.job_history c
INNER JOIN hr.employees f ON c.employee_id = f.employee_id
WHERE MONTH(c.start_date) = 01 OR 
MONTH(c.start_date) = 02 OR
MONTH(c.start_date) = 03
ORDER BY `Nome completo`, `Data de início`;
