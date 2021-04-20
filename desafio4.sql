SELECT
    tb_job.JOB_TITLE AS `Cargo`,
    ROUND(AVG(SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(SALARY), 2) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS tb_job
        INNER JOIN
    hr.employees AS tb_empl ON tb_job.JOB_ID = tb_empl.JOB_ID
GROUP BY tb_job.JOB_TITLE 
ORDER BY `Média salarial` ASC, `Cargo` ASC;
