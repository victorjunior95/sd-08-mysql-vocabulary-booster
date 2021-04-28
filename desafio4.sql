SELECT 
  jobs.JOB_TITLE AS 'Cargo', 
  ROUND(
    SUM(employees.SALARY)/ COUNT(employees.JOB_ID), 
    2
  ) AS MÉDIA, 
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
  ) THEN 'Sênior' ELSE 'CEO' END AS TIPO 
FROM 
  hr.employees 
  INNER JOIN jobs AS jobs ON employees.JOB_ID = jobs.JOB_ID 
GROUP BY 
  (employees.JOB_ID);
  ORDER BY (ROUND(SUM(e.SALARY) / COUNT(e.JOB_ID), 2));
  /* requisito feito com o Auxílio de Arnaelcio Gomes */
