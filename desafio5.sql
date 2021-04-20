SELECT hrj.JOB_TITLE AS 'Cargo', 
(hrj.MAX_SALARY - hrj.MIN_SALARY) AS 'Variação Salarial',
(hrj.MIN_SALARY / 12) AS 'Média mínima mensal',
(hrj.MAX_SALARY / 12) AS 'Média mínima mensal'
FROM hr.jobs AS hrj;
