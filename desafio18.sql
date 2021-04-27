SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(J.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(J.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS J
INNER JOIN hr.employees AS E
ON J.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
