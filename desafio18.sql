SELECT 
    CONCAT(A.First_Name, ' ', A.Last_Name) AS `Nome completo`,
    CONCAT(SUBSTRING(B.START_DATE, 9, 2),
            '/',
            SUBSTRING(B.START_DATE, 6, 2),
            '/',
            SUBSTRING(B.START_DATE, 1, 4)) AS 'Data de início',
    CONCAT(SUBSTRING(B.END_DATE, 9, 2),
            '/',
            SUBSTRING(B.END_DATE, 6, 2),
            '/',
            SUBSTRING(B.END_DATE, 1, 4)) AS 'Data de rescisão',
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM
    hr.employees A
        JOIN
    hr.job_history B ON A.Employee_ID = B.Employee_ID
ORDER BY `Nome completo`, `Anos trabalhados`;