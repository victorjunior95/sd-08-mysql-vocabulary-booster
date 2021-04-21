SELECT
  j.JOB_TITLE AS 'Cargo',
  (MAX(e.SALARY) - MIN(e.SALARY)) AS 'Variação Salarial',
  ROUND(MIN(e.SALARY) / 12, 2) AS 'Média mínima mensal',
  ROUND(MAX(e.SALARY) / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Variação Salarial`, `Cargo`;
