SELECT JOB_TITLE AS Cargo,
format(MAX(SALARY) - MIN(SALARY), 2) AS 'Variação Salarial',
MIN(SALARY) AS 'Média mínima mensal',
MAX(SALARY) AS 'Média máxima mensal'
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
GROUP BY Cargo
ORDER BY (MAX(SALARY) - MIN(SALARY)) , Cargo;
