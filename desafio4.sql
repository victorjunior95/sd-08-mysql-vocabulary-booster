SELECT 
    j.JOB_TITLE AS 'Cargo',
    ROUND(SUM(e.SALARY) / COUNT(e.JOB_ID), 2) AS 'Média salarial',
    CASE
        WHEN FLOOR(SUM(e.SALARY) / COUNT(e.JOB_ID)) <= 5800 THEN 'Júnior'
        WHEN
            FLOOR(SUM(e.SALARY) / COUNT(e.JOB_ID)) >= 5801
                AND FLOOR(SUM(e.SALARY) / COUNT(e.JOB_ID)) <= 7500
        THEN
            'Pleno'
        WHEN
            FLOOR(SUM(e.SALARY) / COUNT(e.JOB_ID)) >= 7501
                AND FLOOR(SUM(e.SALARY) / COUNT(e.JOB_ID)) <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    employees AS e
        INNER JOIN
    jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY (ROUND(SUM(e.SALARY) / COUNT(e.JOB_ID), 2));
