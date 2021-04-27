SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
DATE_FORMAT(jh.start_date, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(jh.end_date, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(end_date, start_date) / 365, 2) AS `Anos trabalhados`
FROM hr.employees e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
