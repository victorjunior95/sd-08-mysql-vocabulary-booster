SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(jh.Start_Date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.End_Date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND((DATEDIFF(jh.End_Date, jh.Start_Date)/365),2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.Employee_ID = e.Employee_ID
GROUP BY `Nome completo`, `Data de início`, `Data de rescisão`, `Anos trabalhados`
ORDER BY `Nome completo`, `Anos trabalhados`;
