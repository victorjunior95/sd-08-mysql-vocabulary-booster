SELECT JOB.job_title AS Cargo, 
ROUND(AVG(EMP.salary), 2)
AS 'Média salarial',
CASE
WHEN AVG(EMP.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(EMP.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(EMP.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(EMP.salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS JOB
INNER JOIN hr.employees AS EMP ON JOB.job_id = EMP.job_id
GROUP BY Cargo ORDER BY AVG(EMP.salary), Cargo;
