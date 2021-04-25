SELECT 
    UCASE(CONCAT(E.first_name, ' ', E.last_name)) AS 'Nome completo',
    DATE(JH.start_date) AS 'Data de início',
    E.salary AS 'Salário'
FROM
    hr.employees E
        INNER JOIN
    hr.job_history JH ON E.job_id = JH.job_id
WHERE
    MONTH(JH.start_date) IN (1 , 2, 3)
ORDER BY `Nome completo` , DATE(JH.start_date);
