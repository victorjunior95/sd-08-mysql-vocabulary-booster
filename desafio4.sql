SELECT jobs.job_title AS `Cargo`, ROUND(AVG(employ.salary), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(employ.salary), 2) >= 2000 AND ROUND(AVG(employ.salary), 2) <= 5800 THEN ('Júnior')
WHEN ROUND(AVG(employ.salary), 2) > 5800 AND ROUND(AVG(employ.salary), 2) <= 7501 THEN ('Pleno')
WHEN ROUND(AVG(employ.salary), 2) > 7501 AND ROUND(AVG(employ.salary), 2) <= 10500 THEN ('Sênior')
WHEN ROUND(AVG(employ.salary), 2) > 10500 THEN ('CEO')
END AS `Senioridade`
FROM hr.jobs as jobs
INNER JOIN hr.employees as employ
ON jobs.job_id = employ.job_id
GROUP BY jobs.job_title
ORDER BY `Média salarial`, Cargo;
