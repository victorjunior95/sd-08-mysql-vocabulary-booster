SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`, jobs.job_title AS `Cargo`, jobHist.start_date AS `Data de início do cargo`, depart.department_name AS `Departamento` FROM job_history AS jobHist INNER JOIN hr.employees AS employees ON jobHist.employee_id = employees.employee_id INNER JOIN hr.jobs AS jobs ON jobHist.job_id = jobs.job_id INNER JOIN hr.departments AS depart ON jobHist.department_id = depart.department_id ORDER BY `Nome completo` DESC, `Cargo`;

-- SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
--   jobs.job_title AS `Cargo`,
--   jobHist.start_date AS `Data de início do cargo`,
--   depart.department_name AS `Departamento`
--   FROM job_history AS jobHist
--   
--   INNER JOIN hr.employees AS employees
--   ON jobHist.employee_id = employees.employee_id

--   INNER JOIN hr.jobs AS jobs
--   ON jobHist.job_id = jobs.job_id

--   INNER JOIN hr.departments AS depart
--   ON jobHist.department_id = depart.department_id
--   ORDER BY `Nome completo` DESC, `Cargo`;
