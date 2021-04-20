SELECT 
    UCASE(CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME)) AS 'Nome completo',
    A.START_DATE AS 'Data de início',
    B.SALARY AS 'Salário'
FROM
    hr.job_history A
        JOIN
    hr.employees B ON A.EMPLOYEE_ID = B.EMPLOYEE_ID
WHERE
    MONTH(A.START_DATE) IN (1 , 2, 3)
ORDER BY CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) , A.START_DATE;
