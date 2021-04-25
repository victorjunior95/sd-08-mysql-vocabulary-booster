SELECT
  jobs.job_title AS Cargo,
  ROUND(AVG(employee.salary), 2) AS 'Média salarial',
  CASE
    WHEN AVG(employee.salary) >= 2000 AND AVG(employee.salary) <= 5800 THEN 'Júnior'
    WHEN AVG(employee.salary) > 5800 AND AVG(employee.salary) <= 7500 THEN 'Pleno'
    WHEN AVG(employee.salary) > 7500 AND AVG(employee.salary) <= 10500 THEN 'Sênior'
    WHEN AVG(employee.salary) > 10500 THEN 'CEO'
    ELSE '-'
  END AS 'Senioridade'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS employee
ON jobs.job_id = employee.job_id
GROUP BY Cargo
ORDER BY `Média salarial`, Cargo;
