SELECT 
  CONCAT(
    UCASE(employees.FIRST_NAME), 
    ' ', 
    UCASE(employees.LAST_NAME)
  ) AS 'Nome completo', 
  job_history.START_DATE AS 'Data de início', 
  employees.SALARY AS 'Salário' 
FROM 
  hr.job_history
  INNER JOIN hr.employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID 
WHERE 
  MONTH(START_DATE) IN (01, 02, 03) 
ORDER BY 
  CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME), job_history.START_DATE;
    /* Adaptado do PR de Arnaelcio Gomes
  https://github.com/tryber/sd-08-mysql-vocabulary-booster/pull/54/files */

