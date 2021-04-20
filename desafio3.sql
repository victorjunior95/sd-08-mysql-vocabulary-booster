SELECT 
    A.JOB_TITLE AS 'Cargo',
    A.MAX_SALARY - A.MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs A
ORDER BY (A.MAX_SALARY - A.MIN_SALARY) , A.JOB_TITLE;
