USE hr;
SELECT 
    JOB_TITLE AS `Cargo`,
    (MAX_SALARY - MIN_SALARY) AS `Diferença entre salários máximo e mínimo`
FROM
    hr.jobs AS job
ORDER BY `Diferença entre salários máximo e mínimo`, job.JOB_TITLE
;
