SELECT Jb.job_title AS `Cargo`,
ROUND(AVG(Emp.salary), 2) AS `Média salarial`,
CASE
WHEN AVG(Emp.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(Emp.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(Emp.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS `Jb`
INNER JOIN
hr.employees AS `Emp` ON Jb.job_id = Emp.job_id
GROUP BY Jb.job_id 
ORDER BY ROUND(AVG(salary)) , job_title;
