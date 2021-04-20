SELECT 
    job.JOB_TITLE AS Cargo,
    ROUND(avg(emp.SALARY),2) AS `Média salarial`,
    CASE
        WHEN
            (avg(emp.SALARY)) >= 2000
                AND (avg(emp.SALARY)) <= 5800
        THEN
            'Júnior'
        WHEN
            (avg(emp.SALARY)) >= 5801
                AND (avg(emp.SALARY)) <= 7500
        THEN
            'Pleno'
        WHEN
            (avg(emp.SALARY)) >= 7501
                AND (avg(emp.SALARY)) <= 10500
        THEN
            'Sênior'
        WHEN (avg(emp.SALARY)) > 10500 THEN 'CEO'
        ELSE 'não classificado'
    END AS 'Senioridade'
FROM
    hr.jobs AS job
INNER JOIN hr.employees AS emp
ON job.JOB_ID = emp.JOB_ID
GROUP BY (job.JOB_ID)
ORDER BY `Média salarial` , Cargo;
