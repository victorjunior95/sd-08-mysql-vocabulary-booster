SELECT
  CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
  JOB_TITLE AS Cargo,
  HIRE_DATE AS `Data de início do cargo`,
  DEPARTMENT_NAME AS Departamento
FROM hr.employees AS employees
JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
JOIN hr.departments AS departments
ON departments.DEPARTMENT_ID = employees.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
