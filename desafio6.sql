SELECT CONCAT(Emp.first_name, ' ', Emp.last_name) AS `Nome completo`,
Jb.job_title AS `Cargo`,
Jh.start_date AS `Data de início do cargo`,
Dp.department_name AS `Departamento`
FROM hr.employees AS `Emp`
INNER JOIN hr.job_history AS `Jh`
ON Emp.employee_id = Jh.employee_id
INNER JOIN hr.jobs AS `Jb`
ON Jh.job_id = Jb.job_id
INNER JOIN hr.departments AS `Dp`
ON Jh.department_id = Dp.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
