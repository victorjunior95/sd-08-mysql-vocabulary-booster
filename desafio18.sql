SELECT
CONCAT(e.FIRST_NAME,' ',LAST_NAME) AS 'Nome completo',
DATE_FORMAT(START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(TIMESTAMPDIFF(DAY,START_DATE,END_DATE)/365,2)  AS 'Anos trabalhados'
FROM job_history h
INNER JOIN employees e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY 1,4;
