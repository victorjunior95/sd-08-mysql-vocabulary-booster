SELECT j.JOB_TITLE AS `Cargo`,
CASE
WHEN ( j.MAX_SALARY > 5000 AND j.MAX_SALARY <= 10000) THEN 'Baixo'
WHEN ( j.MAX_SALARY > 10001 AND j.MAX_SALARY <= 20000) THEN 'Médio'
WHEN ( j.MAX_SALARY > 20001 AND j.MAX_SALARY <= 30000) THEN 'Alto'
WHEN ( j.MAX_SALARY > 30000) THEN 'Médio'
ELSE 'Nível de salário não associado'
END AS `Nível`
FROM hr.jobs AS j
ORDER BY `Cargo`;
