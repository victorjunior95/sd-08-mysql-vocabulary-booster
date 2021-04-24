SELECT B.JOB_TITLE AS Cargo, ROUND(AVG(A.SALARY),2) AS `Média salarial`, 
    CASE
        WHEN ROUND(AVG(A.SALARY),2) < 5800 THEN 'Júnior'
        WHEN ROUND(AVG(A.SALARY),2) < 7500 THEN 'Pleno'
        WHEN ROUND(AVG(A.SALARY),2) < 10500 THEN 'Sênior'
        WHEN ROUND(AVG(A.SALARY),2) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.employees AS A
        INNER JOIN
    hr.jobs AS B
    ON B.JOB_ID = A.JOB_ID
GROUP BY B.JOB_ID , B.JOB_TITLE
ORDER BY `Média salarial`, B.JOB_TITLE;
