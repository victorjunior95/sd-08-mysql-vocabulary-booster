SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS `Nome completo`, jobHist.start_date AS `Data de início`, employees.salary AS `Salário` FROM hr.job_history AS jobHist INNER JOIN hr.employees AS employees ON jobHist.employee_id = employees.employee_id WHERE MONTH(start_date) IN (1, 2, 3) ORDER BY `Nome completo`, `Data de início`;

-- SELECT * FROM hr.job_history;
-- SELECT * FROM hr.employees;
-- SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS `Nome completo`,
-- 	jobHist.start_date AS `Data de início`,
-- 	employees.salary AS `Salário`
--     FROM hr.job_history AS jobHist
--     INNER JOIN hr.employees AS employees
--     ON jobHist.employee_id = employees.employee_id
--     WHERE MONTH(start_date) IN (1, 2, 3)
--     ORDER BY `Nome completo`, `Data de início`;
