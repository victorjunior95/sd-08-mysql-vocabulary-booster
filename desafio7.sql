SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
jo.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.departments AS d
ON e.department_id = d.department_id
INNER JOIN hr.job_history AS jo
ON e.employee_id = jo.employee_id
WHERE MONTH(jo.start_date) IN (1,2,3)
ORDER BY CONCAT(e.first_name, ' ', e.last_name), jo.start_date;
