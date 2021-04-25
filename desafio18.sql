SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
CONCAT(RIGHT(jh.START_DATE, 2), '/', SUBSTRING(jh.START_DATE, 6, 2), '/', LEFT(jh.START_DATE, 4)) AS 'Data de início',
CONCAT(RIGHT(jh.END_DATE, 2), '/', SUBSTRING(jh.END_DATE, 6, 2), '/', LEFT(jh.END_DATE, 4)) AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
