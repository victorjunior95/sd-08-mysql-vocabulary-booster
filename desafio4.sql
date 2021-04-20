SELECT j.job_title AS Cargo, 
ROUND(AVG(e.salary), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(e.salary)) >= 2000 AND AVG(e.salary) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(e.salary)) >= 5801 AND AVG(e.salary) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(e.salary)) >= 7501 AND AVG(e.salary) <= 10500 THEN 'Sênior'
WHEN ROUND(AVG(e.salary)) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY `Média Salarial`, job_title;
