SELECT jobs.JOB_TITLE AS Cargo,
ROUND(AVG(func.SALARY), 2) AS `Média salarial`,
CASE
  WHEN ROUND(AVG(func.SALARY), 2) <= 5800 THEN 'Júnior'
  WHEN ROUND(AVG(func.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN ROUND(AVG(func.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN ROUND(AVG(func.SALARY), 2) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.employees AS func
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = func.JOB_ID
GROUP BY Cargo
ORDER BY `Média Salarial`, Cargo;
