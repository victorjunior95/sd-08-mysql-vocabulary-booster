SELECT 
hrjobs.JOB_TITLE AS Cargo, 
ROUND(hrjobs.MAX_SALARY - hrjobs.MIN_SALARY, 2) AS 'Variação Salarial',
ROUND(MIN(hrjobs.MIN_SALARY)/12,2) AS 'Média mínima mensal',
ROUND(MAX(hrjobs.MAX_SALARY)/12,2) AS 'Média máxima mensal'
FROM hr.jobs AS hrjobs
INNER JOIN hr.employees AS hremp ON hremp.JOB_ID = hrjobs.JOB_ID
GROUP BY hremp.JOB_ID
ORDER BY 2, 1;
