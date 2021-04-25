SELECT
  CONCAT(e.FIRST_NAME,' ',e.LAST_NAME) AS `Nome completo`,
  j.JOB_TITLE AS Cargo,
  h.START_DATE AS `Data de início do cargo`,
  d.DEPARTMENT_NAME AS Departamento
FROM job_history h
INNER JOIN employees e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN jobs j
ON j.JOB_ID = h.JOB_ID
INNER JOIN departments d
ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
