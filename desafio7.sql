SELECT CONCAT(UCASE(Emp.first_name), ' ', UCASE(Emp.last_name)) AS `Nome Completo`,
Jb.job_title AS `Cargo`,
Jh.start_date AS `Data de início do cargo`,
Emp.salary AS `Salário`
FROM hr.employees AS `Emp`
INNER JOIN hr.jobs AS `Jb`
ON Jb.job_id = Emp.job_id
INNER JOIN hr.job_history AS `Jh`
ON Emp.employee_id = Jh.employee_id
ORDER BY `Nome Completo` ASC, `Cargo` ASC;
