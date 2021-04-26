SELECT CONCAT(employees1.first_name, ' ', employees1.last_name) AS 'Nome completo funcionário 1', employees1.salary AS 'Salário funcionário 1', employees1.phone_number AS 'Telefone funcionário 1', CONCAT(employees2.first_name, ' ', employees2.last_name) AS 'Nome completo funcionário 2', employees2.salary AS 'Salário funcionário 2', employees2.phone_number AS 'Telefone funcionário 2' FROM hr.employees AS employees1, hr.employees AS employees2 WHERE employees1.job_id = employees2.job_id AND employees1.employee_id <> employees2.employee_id ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

-- SELECT
--   CONCAT(employees1.FIRST_NAME, ' ', employees1.LAST_NAME) AS 'Nome completo funcionário 1',
--   employees1.salary AS 'Salário funcionário 1',
--   employees1.phone_number AS 'Telefone funcionário 1',
--   CONCAT(employees2.FIRST_NAME, ' ', employees2.LAST_NAME) AS 'Nome completo funcionário 2',
--   employees2.salary AS 'Salário funcionário 2',
--   employees2.phone_number AS 'Telefone funcionário 2'
-- FROM hr.employees AS employees1, hr.employees AS employees2
-- WHERE employees1.job_id = employees2.JOB_ID
-- AND employees1.EMPLOYEE_ID <> employees2.EMPLOYEE_ID
-- ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
