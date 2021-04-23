SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
jh.Start_Date AS 'Data de início',
jh.End_Date AS 'Data de rescisão',
ROUND((DATEDIFF(jh.End_Date, jh.Start_Date)/365),2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.Employee_ID = e.Employee_ID
GROUP BY `Nome completo`, `Data de início`, `Data de rescisão`
ORDER BY CONCAT(e.first_name, ' ', e.last_name), YEAR(jh.End_Date) - YEAR(jh.Start_Date);
