SELECT hrj.JOB_TITLE AS 'Cargo', 
(hrj.MAX_SALARY - hrj.MIN_SALARY) AS 'Variação Salarial',
ROUND(hrj.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
ROUND(hrj.MAX_SALARY / 12, 2) AS 'Média mínima mensal'
FROM hr.jobs AS hrj
ORDER BY `Variação Salarial`;
