SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
j.job_title AS Cargo,  h.start_date AS 'Data de início do cargo', d.department_name AS Departamento
FROM hr.employees AS e, hr.jobs AS j, hr.job_history AS h, hr.departments AS d
WHERE  j.job_id = h.job_id AND e.employee_id = h.employee_id AND d.department_id = h.department_id
ORDER BY `Nome completo` DESC, Cargo;
