SELECT JOB_TITLE AS Cargo,
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND(MIN_SALARY, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY, 2) AS 'Média máxima mensal'
FROM hr.jobs ORDER BY (MIN_SALARY - MAX_SALARY), Cargo;
