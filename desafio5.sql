SELECT JOB_TITLE AS 'Cargo',
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
CAST(MIN_SALARY / 12 AS DECIMAL(10,2)) AS 'Média mínima mensal',
CAST(MAX_SALARY / 12 AS DECIMAL(10,2)) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial`, JOB_TITLE;
