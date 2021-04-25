SELECT
  CONCAT(FIRST_NAME,' ',LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS Cargo,
  h.START_DATE AS `Data de início do cargo`,
  d.DEPARTMENT_NAME AS Departamento
FROM employees e
INNER JOIN jobs j
ON e.JOB_ID = j.JOB_ID
INNER JOIN job_history h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN departments d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
