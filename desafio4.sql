SELECT job.JOB_TITLE AS "Cargo",
AVG(eploy.SALARY) AS "Média salarial",
CASE
WHEN ROUND(AVG(eploy.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(eploy.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(eploy.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS "Senioridade"
FROM hr.jobs AS job
INNER JOIN hr.employees AS eploy
ON job.JOB_ID = eploy.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo`;
