/*  -- Desafio5.SQL */

SELECT 
tbJ.JOB_TITLE 'Cargo',
(tbJ.MAX_SALARY - tbJ.MIN_SALARY) 'Variação Salarial',
ROUND(tbJ.MIN_SALARY / 12, 2)'Média mínima mensal',
ROUND(tbJ.MAX_SALARY / 12, 2)'Média máxima mensal'
FROM hr.jobs tbJ
ORDER BY (tbJ.MAX_SALARY - tbJ.MIN_SALARY), tbJ.JOB_TITLE ASC;
