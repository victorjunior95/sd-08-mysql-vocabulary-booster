-- SELECT * FROM hr.employees;
SELECT
job.JOB_TITLE AS "Cargo",
ROUND(AVG(employee.SALARY), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(employee.SALARY), 2) BETWEEN 2000 AND 5800 THEN "Júnior"
WHEN ROUND(AVG(employee.SALARY), 2) BETWEEN 5801 AND 7500 THEN "Pleno"
WHEN ROUND(AVG(employee.SALARY), 2) BETWEEN 7501 AND 10500 THEN "Sênior"
ELSE "CEO"
END AS "Senioridade"
FROM hr.employees AS employee
INNER JOIN hr.jobs AS job
ON employee.JOB_ID = job.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial`, Cargo;
