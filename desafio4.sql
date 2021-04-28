  /* requisito feito com o Auxílio de Arnaelcio Gomes */
SELECT 
  jobs.JOB_TITLE AS 'Cargo', 
  ROUND(
    SUM(employees.SALARY)/ COUNT(employees.JOB_ID), 
    2
  ) AS 'Média salarial', 
  CASE WHEN (
    ROUND(
      SUM(employees.SALARY)/ COUNT(employees.JOB_ID), 
      2
    ) <= 5800
  ) THEN 'Júnior' WHEN (
    ROUND(
      SUM(employees.SALARY)/ COUNT(employees.JOB_ID), 
      2
    ) > 5800 
    AND ROUND(
      SUM(employees.SALARY)/ COUNT(employees.JOB_ID), 
      2
    ) <= 7500
  ) THEN 'Pleno' WHEN (
    ROUND(
      SUM(employees.SALARY)/ COUNT(employees.JOB_ID), 
      2
    ) > 7500 
    AND ROUND(
      SUM(employees.SALARY)/ COUNT(employees.JOB_ID), 
      2
    ) <= 10500
  ) THEN 'Sênior' ELSE 'CEO' END AS 'Senioridade'
FROM 
  hr.employees 
  INNER JOIN hr.jobs AS jobs ON employees.JOB_ID = jobs.JOB_ID 
GROUP BY 
  (jobs.JOB_TITLE)
  ORDER BY `Média salarial`, jobs.JOB_TITLE;
  