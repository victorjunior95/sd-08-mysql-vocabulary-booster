SELECT 
  Jobs.JOB_TITLE AS 'Cargo',
  ROUND(AVG(Employees.SALARY), 2) AS 'Média salarial',
  CASE
    WHEN AVG(Employees.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN AVG(Employees.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN AVG(Employees.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
    WHEN AVG(Employees.SALARY) > 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM
  hr.employees AS Employees
    INNER JOIN
  hr.jobs AS Jobs ON Employees.JOB_ID = Jobs.JOB_ID
GROUP BY Employees.JOB_ID
ORDER BY `Média salarial`, Cargo;
