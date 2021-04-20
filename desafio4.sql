SELECT 
    J.JOB_TITLE AS 'Cargo',
    ROUND(AVG(E.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(E.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(E.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(E.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(E.SALARY) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS E
        INNER JOIN
    hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY E.JOB_ID
ORDER BY `Média salarial` , Cargo;
