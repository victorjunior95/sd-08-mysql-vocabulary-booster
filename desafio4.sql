SELECT tj.JOB_TITLE as 'Cargo',
ROUND(AVG(te.SALARY), 2) as 'Média salarial',
CASE
	WHEN ROUND(AVG(te.SALARY), 2) <= 5800 THEN 'Júnior'
	WHEN ROUND(AVG(te.SALARY), 2) > 5800 AND ROUND(AVG(te.SALARY), 2) <= 7500 THEN 'Pleno'
	WHEN ROUND(AVG(te.SALARY), 2) > 7500 AND ROUND(AVG(te.SALARY), 2) <= 10500 THEN 'Sênior'
	WHEN ROUND(AVG(te.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
	FROM hr.employees as te 
	INNER JOIN hr.jobs as tj
	ON te.JOB_ID = tj.JOB_ID
	GROUP BY tj.JOB_TITLE
    ORDER BY ROUND(AVG(te.SALARY), 2), tj.JOB_TITLE;
