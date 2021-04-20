SELECT * FROM hr.employees;
SELECT * FROM hr.departments;
SELECT * FROM hr.jobs;
SELECT * FROM hr.job_history;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
j.job_title AS 'Cargo',
jo.start_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id
INNER JOIN hr.departments AS d
ON e.department_id = d.department_id
INNER JOIN hr.job_history AS jo
ON d.department_id = jo.department_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.job_title;