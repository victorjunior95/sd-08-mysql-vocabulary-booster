SELECT 
    UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
    JH.START_DATE AS 'Data de início',
    E.SALARY AS 'Salário'
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS J ON JH.JOB_ID = J.JOB_ID
WHERE
    MONTH(JH.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo`, `Data de início`;
