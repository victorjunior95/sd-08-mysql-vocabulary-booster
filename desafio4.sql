SELECT jobs.JOB_TITLE AS 'Cargo', ROUND(AVG(employees.SALARY),2) AS 'Média Salarial',
  CASE
    WHEN ROUND(AVG(SALARY),2) >= 2000 AND ROUND(AVG(SALARY),2) <= 5800 THEN 'Júnior'
    WHEN ROUND(AVG(SALARY),2) >= 5801 AND ROUND(AVG(SALARY),2) <= 7500 THEN 'Pleno'
    WHEN ROUND(AVG(SALARY),2) >= 7501 AND ROUND(AVG(SALARY),2) <= 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS empolyees
ON jobs.JOB_ID = employees.JOB_ID
ORDER BY 'Média Salarial', 'Cargo';
