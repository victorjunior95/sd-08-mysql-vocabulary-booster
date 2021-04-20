SELECT 
    hrj.JOB_TITLE AS 'Cargo', CONCAT(hrj.MAX_SALARY - hrj.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs AS hrj
ORDER BY hrj.MAX_SALARY, hrj.JOB_TITLE;
