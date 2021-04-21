SELECT
c.Cargo,
c.`Média salarial`,
CASE
	WHEN `Média salarial` > 10500 THEN 'CEO'
	WHEN `Média salarial` > 7500 THEN 'Sênior'
	WHEN `Média salarial` > 5800 THEN 'Pleno'
	ELSE 'Júnior'
END AS Senioridade
FROM (
SELECT
j.job_title AS Cargo,
ROUND(AVG(e.salary), 2) AS `Média salarial`
FROM hr.employees e
INNER JOIN hr.jobs j
ON e.job_id = j.job_id
GROUP BY j.job_id
) AS c
ORDER BY `Média salarial`, c.Cargo;
