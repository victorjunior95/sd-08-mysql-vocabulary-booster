SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
  J.JOB_TITLE AS 'Cargo',
  JH.START_DATE AS `Data de início do cargo`,
  D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees E
INNER JOIN hr.job_history JH
  ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs J
  ON J.JOB_ID = JH.JOB_ID
INNER JOIN hr.departments D
  ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
