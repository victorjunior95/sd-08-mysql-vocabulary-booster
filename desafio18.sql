SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(JH.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM employees AS E
    INNER JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`,
    `Anos trabalhados`;
