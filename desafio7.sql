SELECT UCASE(CONCAT(Emp.first_name, ' ', Emp.last_name)) AS `Nome completo`,
Jh.start_date AS `Data de início`,
Emp.salary AS `Salário`
FROM hr.employees AS `Emp`
INNER JOIN hr.job_history AS `Jh`
ON Emp.employee_id = Jh.employee_id
WHERE MONTH(Jh.start_date) IN (1 , 2, 3)
ORDER BY `Nome completo` ASC, `Data de início`;
