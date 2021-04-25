SELECT Jobs.job_title AS Cargo,
ROUND(AVG(Employees.salary), 2) AS 'Média salarial',
CASE WHEN AVG(Employees.salary) BETWEEN 2000 AND 5800 THEN 'Júnior' WHEN AVG(Employees.salary) BETWEEN 5801 AND 7500 THEN 'Pleno' WHEN AVG(Employees.salary) BETWEEN 7501 AND 10500 THEN 'Sênior' WHEN AVG(Employees.salary) > 10500 THEN 'CEO' END AS 'Senioridade' FROM hr.employees AS Employees INNER JOIN hr.jobs AS Jobs ON Employees.job_id = Jobs.job_id GROUP BY Employees.job_id ORDER BY `Média salarial`, Cargo;
