SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
jh.Start_Date AS 'Data de início',
jh.End_Date AS 'Data de rescisão',
YEAR(jh.End_Date) - YEAR(jh.Start_Date) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.Employee_ID = e.Employee_ID
ORDER BY CONCAT(e.first_name, ' ', e.last_name), YEAR(jh.End_Date) - YEAR(jh.Start_Date);
