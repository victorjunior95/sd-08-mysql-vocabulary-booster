SELECT jb.JOB_TITLE AS 'Cargo', ROUND(AVG(em.salary),2) AS 'Média salarial', 
  CASE 
    WHEN  ROUND(AVG(em.salary),2)  BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN  ROUND(AVG(em.salary),2) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN  ROUND(AVG(em.salary),2)  BETWEEN 7501 AND 10500 THEN 'Sênior'
    WHEN  ROUND(AVG(em.salary),2) > 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM hr.jobs AS jb
	INNER JOIN 
    hr.employees AS em on em.JOB_ID = jb.JOB_ID
  GROUP BY jb.JOB_TITLE
  ORDER BY `Média Salarial`, `Cargo`;
