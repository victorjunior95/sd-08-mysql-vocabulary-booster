SELECT Jobs.JOB_TITLE AS `Cargo`, ROUND(AVG(Employees.SALARY), 2) AS `Média salarial`,
CASE
  WHEN ROUND(AVG(Employees.SALARY), 2) BETWEEN (2000) AND (5800) THEN 'Júnior'
  WHEN ROUND(AVG(Employees.SALARY), 2) BETWEEN (5801) AND (7500) THEN 'Pleno'
  WHEN ROUND(AVG(Employees.SALARY), 2) BETWEEN (7501) AND (10500) THEN 'Sênior'
  ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS `Employees`
INNER JOIN hr.jobs AS `Jobs`
ON Employees.JOB_ID = Jobs.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo`;
