SELECT CONCAT(Employees_1.first_name, ' ', Employees_1.last_name) AS `Nome completo funcionário 1`,
Employees_1.salary AS `Salário funcionário 1`,
Employees_1.phone_number AS `Telefone funcionário 1`,
CONCAT(Employees_2.first_name, ' ', Employees_2.last_name) AS `Nome completo funcionário 2`,
Employees_2.salary AS `Salário funcionário 2`,
Employees_2.phone_number AS `Telefone funcionário 2`
FROM hr.employees AS Employees_1, hr.employees AS Employees_2
WHERE Employees_1.job_id = Employees_2.job_id 
AND Employees_1.employee_id <> Employees_2.employee_id
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
