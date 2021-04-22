SELECT 
    JOB_TITLE AS 'Cargo',
    ROUND(AVG(SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS jobs
        INNER JOIN
    hr.employees AS empl ON empl.JOB_ID = jobs.JOB_ID
GROUP BY Cargo
ORDER BY `Média Salarial` , Cargo;
