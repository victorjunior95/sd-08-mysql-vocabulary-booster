SELECT 
    JOB_TITLE AS Cargo,
    max_salary - min_salary AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo` ASC , `Cargo` ASC;
