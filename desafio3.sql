SELECT JOB_TITLE AS `cargo`, 
(MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs ORDER BY  MAX_SALARY - MIN_SALARY, JOB_TITLE ASC;
