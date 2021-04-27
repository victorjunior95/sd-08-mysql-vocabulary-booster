SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.START_DATE AS 'Data de início',
J.END_DATE AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS J
INNER JOIN hr.employees AS E
ON J.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
