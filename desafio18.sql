SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
    CONCAT(SUBSTRING(jh.START_DATE, 9, 2),
            '/',
            SUBSTRING(jh.START_DATE, 6, 2),
            '/',
            YEAR(jh.START_DATE)) 'Data de início',
    CONCAT(SUBSTRING(jh.END_DATE, 9, 2),
            '/',
            SUBSTRING(jh.END_DATE, 6, 2),
            '/',
            YEAR(jh.END_DATE)) 'Data de rescisão',
    ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365,
            2) 'Anos trabalhados'
FROM
    hr.job_history jh
        INNER JOIN
    employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
