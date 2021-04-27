SELECT UCASE(CONCAT(Emp.first_name, ' ', Emp.last_name)) AS `Nome completo`,
Jh.start_date AS `Data de início do cargo`,
Emp.salary AS `Salário`
FROM hr.employees AS `Emp`
INNER JOIN hr.job_history AS `Jh`
ON Emp.employee_id = Jh.employee_id
ORDER BY `Nome completo` ASC, Jh.start_date;
