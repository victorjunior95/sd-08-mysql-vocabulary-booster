SELECT JOB.job_title AS Cargo, 
ROUND((JOB.max_salary - JOB.min_salary), 2)
AS 'Variação Salarial',
ROUND(JOB.min_salary/12, 2)
AS 'Média mínima mensal',
ROUND(JOB.max_salary/12, 2)
AS 'Média máxima mensal'
FROM hr.jobs AS JOB
ORDER BY `Variação Salarial`, Cargo;
