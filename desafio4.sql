SELECT j.job_title AS 'Cargo', 
ROUND(AVG(e.salary), 2) AS 'Média salarial',
CASE
WHEN AVG(e.salary) >= 2000 AND AVG(e.salary) <= 5800 THEN 'Júnior'
WHEN AVG(e.salary) >= 5801 AND AVG(e.salary) <= 7500 THEN 'Pleno'
WHEN AVG(e.salary) >= 7501 AND AVG(e.salary) <= 10500 THEN 'Sênior' 
WHEN e.salary >= 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY AVG(e.salary), j.job_title;
