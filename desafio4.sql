SELECT job_title AS 'Cargo', ROUND(AVG(salary), 2) AS `Média salarial`, CASE WHEN AVG(employees.salary) BETWEEN 2000 and 5800 THEN 'Júnior' WHEN AVG(employees.salary) BETWEEN 5801 and 7500 THEN 'Pleno' WHEN AVG(employees.salary) BETWEEN 7501 and 10500 THEN 'Sênior' ELSE 'CEO' END AS 'Senioridade' FROM hr.employees AS employees INNER JOIN hr.jobs AS jobs ON employees.job_id = jobs.job_id GROUP BY jobs.job_title ORDER BY `Média salarial`, job_title;

-- SELECT * FROM hr.employees;
-- SELECT * FROM hr.jobs;
-- SELECT job_title AS 'Cargo',
-- 	ROUND(AVG(salary), 2) AS `Média salarial`,
-- 		CASE 
-- 			WHEN AVG(employees.salary) BETWEEN 2000 and 5800 THEN 'Júnior'
--             WHEN AVG(employees.salary) BETWEEN 5801 and 7500 THEN 'Pleno'
--             WHEN AVG(employees.salary) BETWEEN 7501 and 10500 THEN 'Sênior'
--             ELSE 'CEO'
--         END AS 'Senioridade'
-- FROM hr.employees AS employees
-- INNER JOIN hr.jobs AS jobs
-- ON employees.job_id = jobs.job_id
-- GROUP BY jobs.job_title
-- ORDER BY `Média salarial`, job_title;
