SELECT JOB_TITLE AS "Cargo", ((SELECT MAX_SALARY) - (SELECT MIN_SALARY)) AS "Diferença entre salários máximo e mínimo"
FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, JOB_TITLE ASC;
