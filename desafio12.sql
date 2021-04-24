SELECT  CONCAT(e1.first_Name, ' ', e1.last_Name) AS 'Nome completo funcionário 1', e1.salary AS 'Salário funcionário 1', e1.phone_Number AS 'Telefone funcionário 1',
CONCAT(e2.first_Name, ' ', e2.last_Name) AS 'Nome completo funcionário 2', e2.salary AS 'Salário funcionário 2', e2.phone_Number AS 'Telefone funcionário 2'
FROM  hr.employees e1
INNER JOIN hr.employees e2
ON
(e1.job_id = e2.job_id) AND e1.employee_id <> e2.employee_id
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
