SELECT 
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs e
        WHERE
            e.JOB_ID = j.JOB_ID) AS 'Cargo',
    ROUND(AVG(j.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(j.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(j.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(j.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(j.salary) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees j
GROUP BY j.JOB_ID
ORDER BY AVG(j.salary) , `Cargo`;
