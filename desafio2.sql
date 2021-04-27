SELECT job_title AS `Cargo`,
CASE
	WHEN max_salary BETWEEN 5000 
	WHEN max_salary BETWEEN 10001
	WHEN max_salary BETWEEN 20001
	ELSE 'Altíssimo'
	END AS `Nível`
FROM hr.jobs ORDER BY `Cargo`;
