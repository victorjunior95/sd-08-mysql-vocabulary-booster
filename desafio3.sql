/* -- Desafio3.SQL */

SELECT 
tbJ.JOB_TITLE 'Cargo', 
(tbJ.MAX_SALARY - tbJ.MIN_SALARY) 'Diferença entre salários máximo e mínimo'
FROM hr.jobs tbJ
ORDER BY (tbJ.MAX_SALARY - tbJ.MIN_SALARY), tbJ.JOB_TITLE ASC;
