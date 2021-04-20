SELECT 
  j.JOB_TITLE AS `Cargo`,
  ROUND(AVG(e.SALARY),2) AS `Média salarial`,
  CASE
    WHEN AVG(e.SALARY) >= 2000 && AVG(e.SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(e.SALARY) > 5800 && AVG(e.SALARY) <= 7500 THEN 'Pleno'
    WHEN AVG(e.SALARY) > 7500 && AVG(e.SALARY) <= 10500 THEN 'Sênior'
    WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM hr.jobs as j
INNER JOIN hr.employees as e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Média salarial`, `Cargo`;
