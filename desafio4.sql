SELECT
  j.JOB_TITLE AS 'Cargo',
  ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
  CASE
    WHEN AVG(e.SALARY) >= 2000 AND AVG(e.SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(e.SALARY) >= 5801 AND AVG(e.SALARY) <= 7500 THEN 'Pleno'
	  WHEN AVG(e.salary) >= 7501 AND AVG(e.salary) <= 10500 THEN 'Sênior'
    WHEN AVG(e.salary) > 10500 THEN 'CEO'
    ELSE 'default'
  END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID;
