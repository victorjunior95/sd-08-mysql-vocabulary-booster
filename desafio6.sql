SELECT
  CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) AS `Nome completo`,
  C.JOB_TITLE AS `Cargo`,
  D.START_DATE AS `Data de início do cargo`,
  B.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS D
  INNER JOIN hr.jobs AS C ON D.JOB_ID = C.JOB_ID
  INNER JOIN hr.employees AS A ON D.EMPLOYEE_ID = A.EMPLOYEE_ID
  INNER JOIN hr.departments AS B ON D.DEPARTMENT_ID = B.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
