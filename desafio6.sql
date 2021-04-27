SELECT CONCAT(Emp.first_name, ' ', Emp.last_name) AS `Nome Completo`,
Jb.job_title AS `Cargo`,
DATE(Jh.start_date) AS `Data de início do cargo`,
Dp.department_name AS `Departamento`
FROM hr.employees AS `Emp`
INNER JOIN hr.jobs AS `Jb`
ON Jb.job_id = Emp.job_id
INNER JOIN hr.departments AS `Dp`
ON Emp.department_id = Dp.department_id
INNER JOIN hr.job_history AS `Jh`
ON Emp.employee_id = Jh.employee_id
ORDER BY `Nome Completo` DESC, `Cargo`;
