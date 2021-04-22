SELECT  CONCAT (UCASE(EMP.first_name), ' ', UCASE(EMP.last_name)) AS 'Nome completo',
JOH.start_date AS 'Data de início',
EMP.salary AS 'Salário'
FROM hr.job_history AS JOH
INNER JOIN hr.employees AS EMP ON JOH.employee_id = EMP.employee_id
WHERE MONTH(JOH.start_date) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
