SELECT CONCAT( UCASE( E.first_name ), ' ', UCASE( E.last_name )) AS `Nome completo`,
JH.start_date AS `Data de início`,
E.salary AS 'Salário'
FROM hr.job_history AS JH 
INNER JOIN hr.employees AS E ON JH.employee_id = E.employee_id
WHERE MONTH(JH.start_date) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início` ASC; 
