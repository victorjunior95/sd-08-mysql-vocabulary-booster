SELECT JOB_TITLE AS 'Cargo',
CAST(AVG(SALARY) AS DECIMAL(10,2)) AS 'Média salarial'
FROM hr.jobs job
INNER JOIN hr.employees employee
ON job.JOB_ID = employee.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média salarial`, JOB_TITLE;
