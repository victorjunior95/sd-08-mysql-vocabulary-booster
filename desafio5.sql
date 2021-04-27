SELECT JOB_TITLE AS Cargo,
format(MAX_SALARY - MIN_SALARY, 2) AS 'Variação Salarial',
format(MIN_SALARY, 2) AS 'Média mínima mensal',
format(MAX_SALARY, 2) AS 'Média máxima mensal'
FROM hr.jobs ORDER BY (MIN_SALARY - MAX_SALARY), Cargo;
