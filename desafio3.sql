SELECT JOB_TITLE AS `Cargo`,
MAX_SALARY - MIN_SALARY AS `Diferenças entre salário máximo e mínimo`
FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, JOB_TITLE;
