SELECT
CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
CONCAT(IF(DAY(jh.start_date) < 10, CONCAT(0, DAY(jh.start_date)), DAY(jh.start_date)),
'/', IF(MONTH(jh.start_date) < 10, CONCAT(0, MONTH(jh.start_date)), MONTH(jh.start_date)),
'/', YEAR(jh.start_date)) AS `Data de início`,
CONCAT(IF(DAY(jh.end_date) < 10, CONCAT(0, DAY(jh.end_date)), DAY(jh.end_date)),
'/', IF(MONTH(jh.end_date) < 10, CONCAT(0, MONTH(jh.end_date)), MONTH(jh.end_date)),
'/', YEAR(jh.end_date)) AS `Data de rescisão`,
ROUND((DATEDIFF(jh.end_date, jh.start_date))/365, 2) AS `Anos trabalhados`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.employee_id = e.employee_id
INNER JOIN hr.jobs AS j
ON jh.job_id = j.job_id
INNER JOIN hr.departments AS d
ON jh.department_id = d.department_id
ORDER BY 1, 4;
